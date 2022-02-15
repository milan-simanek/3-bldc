#include "globals.h"
#include "proto.h"
#include "com.h"
#include "pwm.h"
#include "const.h"
#include "main.h"
#include "rot.h"
#include "sensor.h"

#include "avr/io.h"

extern char dbgf;
char Opts; 
uchar Int0cnt=0;

unsigned ParseUInt(char **msg) {
  unsigned register x;
  char register c;
  x=0; 
  if ('x'==**msg) {
    ++*msg;
    for(;(c=**msg);++*msg) {
      if (c>='0' && c<='9') x=(x<<4)+c-'0'; else
      if (c>='a' && c<='f') x=(x<<4)+c-'a'+10; else
      if (c>='A' && c<='F') x=(x<<4)+c-'A'+10; else
      break;
    }
  } else {
    for(;(c=**msg);++*msg) {
      if (c<'0' || c>'9') break;
      x=x*10+c-'0';
    }
  }
  return x;
}
int ParseInt(char **msg) {
  unsigned register x;
  char register m;
  m=0; 
  if ('-'==**msg) { m=1; ++*msg;}
  x=ParseUInt(msg);
  return m ? -x : x;
}

extern unsigned LastPosition;
unsigned GetPosition(void);

void Report(void) {
  ComF("\rPos=%/% dPos=% d2=% S=% Rot=% A=% RQ%=% pwm=%% [%]");
  ComFHex2(PosRots);ComFHex2(PosFract8);
  ComFHex2(Int0cnt-PosRots);
  ComFHex2(d2);
  ComFHex2(SensorOffset8);
  ComFHex4(Rot);
  ComFHex4(Accel);
  ComFChar(RQA ? 'A' : 'R');
  ComFHex4(RQA ? RQAccel : RQRot);
  ComFChar(MotorAction ? MotorAction>0 ? '+' : '-' : ' ');
  ComFHex2(PWM);
  ComFChar(Fault ? 'F' : ' ');
}

void SetSensorOffset(uchar so) {
  uchar x=0;
  do {
    if (x>=so) { SensorOffset8=x; return; }
    StepPlus(x);
  } while (x);
  SensorOffset8=0;
}

void ProtoOpts(const char  *p) {
  char opt=0;
  switch (*p++) {
  case 's': opt=OPT_ROTSYN; break;
  case 'a': opt=OPT_AUTOROT; break;
  case 'f': opt=OPT_IGNFLT; break;
  }
  switch (*p) {
  case '+':
  case '1': Opts|=opt; break;
  case '-':
  case '0': Opts&=~opt; break;
  }
  ComF("OPTS: IGNFLT=% AUTOROT=% ROTSYN=%\r");
  ComFChar(Opts&OPT_IGNFLT ? '1' : '0');
  ComFChar(Opts&OPT_AUTOROT ? '1' : '0');
  ComFChar(Opts&OPT_ROTSYN ? '1' : '0');
}

char cnt=30;
void ProtoReceive(void) {
  char *msg;
  msg=ComGetMsg();
  switch (*msg++) {
  case 0x0: ComF("...still alive...\r\n");	break;
  case 'a': RQAccel=ParseInt(&msg); RQA=1;	break;
  case 'r': RQA=0;
            RQRot=*msg ? ParseInt(&msg) : Rot;	break;
  case 'd': if (*msg) dbgf&=~ParseUInt(&msg); else dbgf=0; 
                                                break;
  case 'D': dbgf|=ParseUInt(&msg);		break;
  case 'M': MeasureSensor();			break;
  case 's': switch (*msg) {
            case 0:					break;
            case '+': StepPlus(SensorOffset8);		break;
            case '-': StepMinus(SensorOffset8);		break;
            default:  SetSensorOffset(ParseUInt(&msg));	break;
            }; 
                                                break;
  case 'o': ProtoOpts(msg); 			break;
  case '/': RQAccel=0; RQA=1; 
            WaitToStop=1; Fault=1;		break;
  case ' ': Report(); 				break;
  }
  ComDelMsg();
}

