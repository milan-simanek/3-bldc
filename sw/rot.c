#include <avr/io.h>
#include <avr/interrupt.h>

#include "globals.h"
#include "const.h"
#include "rot.h"
#include "passive-wait.h"
#include "main.h"
#include "libclk.h"
#include "com.h"
#include "sensor.h"
#include "pwm.h"
#include "ports.h"
#include "macro_ports.h"

#define FAULT_TO	10
#define MAX_ANGLE	0x40	// maximal torque angle (0x100=360°)

int8_t MotorAction, Fault, WaitToStop;

#define CUMMULATIVE(val, raw, bits) \
  val=(val##C +=raw-(val##C>>bits))>>bits;


// GetPosition returns current 16-bit position: 8bits=rotation count, 8bits=angle
unsigned GetPosition(void) {
  return (PosRots<<8)|PosFract8;
}

unsigned LastPosition;
uint16_t LastRot;

int Rot;		// current rotation speed
int Accel;		// current acceleration
int RQAccel;		// requested acceleration
int RQRot;		// requested rotation speed
char RQA;		// requested speed/accel switch (1=requested accel, 0=requested speed)

int32_t RotC;		// cummulative average rotation speed
int16_t AccelC;		// cummulative average acceleration

void ResetFault(void);

ISR(TIMER1_COMPA_vect) { // f=128Hz	; vector_11
  static uchar roth;
  int x, max, dx;
  if (Fault) ResetFault();
  if (SensorDetecting) return;
  x=GetPosition();
  sei();
  dx=x-LastPosition;
  LastPosition=x;
  CUMMULATIVE(Rot, dx, 4);
  if (roth) roth--; 
  if (dx) roth|=32;
  if (RQRot && !roth && !(Opts&OPT_AUTOROT)) {
    cli();
    StepPlus(PosFract8); // kick it, if no rotation step for a long time
    if (!PosFract8) PosRots++;
    sei();
  }
  
  x=dx=RotC;		// acceleraton calculated +4bits
  dx-=LastRot;
  LastRot=x;
  CUMMULATIVE(Accel, dx, 4);
  
  if (RQA) x=(RQAccel-Accel)<<1;
  else x=RQRot-Rot;
  if (x<0) MotorAction=-MAX_ANGLE; else 
  if (x>0) MotorAction=+MAX_ANGLE; else
  MotorAction=0;

  max=Rot>>3;
  if (max<0) max=-max;
  max+=0x40;
  if (max>0xC0) max=0xC0;
  x<<=3;  
  if (x<0) x=-x;
  if (x>max) x=max;
  SetPWM(x);
}

// Timer1 fclk=256kHz T1_T0us=3,9us (prescaler 64)
void InitRot(void) {
  TCNT1=0;  // Timer value
  OCR1A=T1_TOP;  // TOP value 
  TCCR1A=(0<<COM1A0)  // Compare Output Mode A
        |(0<<COM1B0)  // Compare Output Mode B
        |(00<<WGM10); // CTC mode
  TCCR1B=(0<<ICNC1)   // Input Capture Noise Canceler
        |(0<<ICES1)   // Input Capture Edge Select
        |(0<<WGM13)   // TOP=OCR1A
        |(1<<WGM12)   // CTC mode
        |(T1_CS<<CS10);	// prescaler 
//  TCCR1C=0; // Force Output Compare A+B
  TIMSK1=(0<<ICIE1)     // Int on ICR1
        |(0<<OCIE1B)    // Int on OCR1B (not used)
        |(1<<OCIE1A)    // Int on OCR1A (rotation and acceleration evaluation)
        |(0<<TOIE1);    // Int on TOP (when 0xFFFF->0x0000) 
}

/************* Fault Handling *****************/

void ResetFault(void) {
  MotorOFF();
  if (!(PIN(FAULT)&PMASK(FAULT))) if (!(Opts&OPT_IGNFLT)) return;
  if (WaitToStop) {
    if (Rot) return; else WaitToStop=0;
  }
    
  if (--Fault) return;
}
void StopMotor(void) {	// stop motor and wait until it really stops
  unsigned n,p;
  MotorLOW();
  n=0;
  do {
    p=GetPosition();
    sleepms(100);
    if (p==GetPosition()) n++; else n=0;
  } while (n<10);
}

ISR(PCINT1_vect) {
  if (!(PIN(FAULT)&PMASK(FAULT))) if (!(Opts&OPT_IGNFLT)) Fault=FAULT_TO;
}


void InitFault(void) {
  PCMSK1=(1<<PCINT8);	// PCINT8/PC0 = error report
  PCICR|=(1<<PCIE1);
}


