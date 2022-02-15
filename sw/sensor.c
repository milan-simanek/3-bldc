#include <stdint.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include "const.h"
#include "sensor.h"
#include "main.h"
#include "rot.h"
#include "com.h"
#include "ports.h"
#include "macro_ports.h"

#define DEFAULT_SENSOROFFSET8	0xE0

uchar SensorOffset8, SensorDetecting;
uchar PosFract8, PosRots;
uchar d2;

/************* Phase Control **************/
// PB0=~H1 PB1=~H2 PB2=~H3 PB3=~L1 PB4=~L2 PB5=~L3 (111111b=0x3F=off state)
//
//                               LLLHHH
//                               321321
const uint8_t CommuteMAP[] = { 0b101110,
                               0b011110,
                               0b011101,
                               0b110101,
                               0b110011,
                               0b101011,
                               0,0 };

void OutPhase(uchar phase) {
  while (phase>5) phase-=6;
  MPORT(PHASES)=(MPORT(PHASES) & ~MMASK(PHASES)) | CommuteMAP[phase];
}

void Commute(void) {
  uchar register phase;
  if (SensorDetecting) return;
  if (Fault || !MotorAction) { MotorOFF(); return; };
  phase=PosFract8;
  phase+=MotorAction;
  phase=(phase*6+128)>>8; if (phase==6) phase=0;
  OutPhase(phase);
}
void MotorOFF(void) {		// disconnect motor
  MPORT(PHASES)|=0b111111;
}
void MotorLOW(void) {		// breaks
  MotorOFF();
  MPORT(PHASES)&=~0b111000;
}

#ifndef ASM_INT1

ISR(INT1_vect) {		// step PD3=STEPA + PD4=STEPB
  register uchar x;
  x=PIN(STEPA)+PMASK(STEPA);
  if (x&PMASK(STEPB)) {		// bits differ
    StepPlus(PosFract8);
    if (!PosFract8) PosRots++;
  } else {			// bits are equal
    if (!PosFract8) PosRots--;
    StepMinus(PosFract8);
  }
  Commute();
} 

#endif

#ifndef ASM_INT0
ISR(INT0_vect) {		// reached home position = 0 angle
  d2=PosFract8;
  if (PosFract8>0x80+SensorOffset8) PosRots++;		// offset with overflow
  else if (PosFract8+0x80<SensorOffset8) PosRots--;	// offset with underflow
  PosFract8=SensorOffset8; 				// offset = syncing
}
#endif

void InitSensor(void) {
  PosFract8=0;
  SensorOffset8=DEFAULT_SENSOROFFSET8;
  EICRA=(1<<ISC00)|(1<<ISC10);	// any change in INT0,INT1 triggers an interrupt
  EIMSK=(1<<INT0)|(1<<INT1);	// enable INT0+INT1
}
