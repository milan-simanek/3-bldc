#include "globals.h"
#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>
#include "main.h"
#include "libclk.h"
#include "passive-wait.h"
#include "com.h"
#include "proto.h"
#include "pwm.h"
#include "const.h"
#include "rot.h"
#include "sensor.h" 
#include "tick.h"
#include "ledkey.h"
#include "ports.h"
#include "macro_ports.h"

char dbgf=1; // debug flag


/**********************************************/

#define MS_OTACEK	6
const char M_MS0[]	PROGMEM = "Measure: \r";
const char M_MS1[]	PROGMEM = "MS: motor off\r";
const char M_MS2[]	PROGMEM = "MS: go to angle 0\r";
const char M_MS_S[]	PROGMEM = "MS: initialization round phase=%\r";
const char M_MS_M[]	PROGMEM = "MS: ph=% pos=% ph-pos=% total=% t_val=%\r";
const char M_MS_E[]	PROGMEM = "MS: end. Sensor=%\r";

// measures the location of zero_angle sensor
unsigned ms_timer;
void MeasureSensor(void) {
  ComFormat(M_MS0);
  SensorDetecting=1;
  ms_timer=3 MST_SECOND;
}
uchar NextPhasePF8(uchar pf8) {
  for(unsigned i=PHASESTEPS;i--;) { StepPlus(pf8); }
  return pf8;
}
  
void MeasureSensorNext(void) {
  static uchar ph;
  static unsigned t_val;
  static int16_t result;
  static uchar curPF8;
  uchar x;
  switch (SensorDetecting++) {
  case 1:			// stop motor
    ComFormat(M_MS1);
    result=0;
    SensorOffset8=0;
    StopMotor();
    ms_timer=1 MST_SECOND;
    break;
  case 2:			// rotate to phase 0 0
    ComFormat(M_MS2);
    OutPhase(ph=0); curPF8=0;
    SetPWM(64);
    ms_timer=1 MST_SECOND;
    break;
  case 3: case 4: case 5: case 6: case 7: case 8: // rotate one round to trigger the sensor
    if (++ph>5) ph=0; 
    curPF8=NextPhasePF8(curPF8);
    OutPhase(ph);
    ComFormat(M_MS_S); ComFHex2(ph);
    ms_timer=10 MST_100MS;
    t_val=10 MST_100MS;
    break;
//  case 9-26: 			// angle measurement
  case MS_OTACEK*6+9:		// finish measurement
    StopMotor();
    result/=(MS_OTACEK*6);
    while (result>0) {		// SensorOffset8=-result;
      StepMinus(result);
      StepMinus(SensorOffset8);
    }
    ComFormat(M_MS_E); ComFHex4(SensorOffset8);
    SensorDetecting=0;
    SetPWM(0);
    break;    
  default: 			// measure each step
    x=PosFract8-curPF8;
    result+=x;
    ComFormat(M_MS_M); ComFHex2(ph); ComFHex2(PosFract8); ComFHex2(x); ComFHex4(result); ComFHex4(t_val);
    ms_timer=t_val;
    t_val-=t_val>>4; 		// speed up
    if (++ph>5) ph=0; 
    curPF8=NextPhasePF8(curPF8);
    OutPhase(ph);
  }
}

void TimeTick(void) {
  static uchar report;
  if (SensorDetecting) if (!--ms_timer) MeasureSensorNext();
  if (!SensorDetecting && (dbgf&1) && !--report) {
    Report();
    report=3 MST_100MS;
  }
}

const char M_Ready[]          PROGMEM = "=== READY ===\r";

int main(void) {
  InitCLK();
  PortsInit();
  LedkeyInit();  
  MotorOFF();
  InitCom();
  sleepms(100);
  InitTick();
  InitPWM();
  InitRot();
  InitFault();
  InitSensor();
  sei();
  ComFormat(M_Ready);
  Fault=1;
  for(;;) {
//    LedAll(Key());
    LedkeyPrintHex(Rot,0,4,LKF_DOT);
    SleepOnAction();
    if (TestAction(ACT_COM)) ProtoReceive();
    if (TestAction(ACT_TICK)) TimeTick();
  }
}
