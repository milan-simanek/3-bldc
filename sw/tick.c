#include "tick.h"
#include "passive-wait.h"
#include "const.h"
#include <avr/interrupt.h>
#include <avr/io.h>

ISR(TIMER2_COMPA_vect) {
  Action|=ACT_TICK;
}

void InitTick(void) {
  TCCR2A=2;     // CTC mode, counting till OCR2A
  TCCR2B=7;     // CTC mode, prescaler x1024
  OCR2A=T2_TOP;
  TIMSK2=1<<OCIE2A; // INT on OCR2A
}
