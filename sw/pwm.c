#include <avr/io.h>
#include <avr/interrupt.h>
#include "globals.h"
#include "pwm.h"

uint8_t PWM;		// 0..255

void SetPWM(uchar pwm) {
  OCR0B=PWM=pwm/8;
} 

void InitPWM(void) {
  // phase correct PWM, prescale 8x => 3,9kHz
  // fast pwm prescale 8x => 7,8 kHz
  // phase correct PWM, prescale 1x => 31,25kHz PWM
  OCR0B=0;  // reset PWM value
  TCCR0A=(0<<COM0A0)   // OC0A not used
        |(2<<COM0B0)   // OC0B noninverting mode (upcounting match=>0 downcounting match=>1)
        |(1<<WGM00);   // Phase Correct PWM
  TCCR0B=(0<<FOC0A)    // no force output compare A
        |(0<<FOC0B)    // no force output compare B
        |(0<<WGM02)    // 0:TOP=0xFF 1:TOP=OCRA
	|(1<<CS00);	// prescaler 1x
//	|(2<<CS00);    // prescaler 8x
//	|(3<<CS00);    // prescaler 64x
  TIMSK0=(0<<OCIE0B)   // INT on compare match B
        |(0<<OCIE0A)   // INT on compare match A
        |(0<<TOIE0);   // INT on overflow 
}

