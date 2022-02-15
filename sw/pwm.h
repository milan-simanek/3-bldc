#ifndef _PWM_H_
#define _PWM_H_

#include <stdint.h>

extern uint8_t PWM;

void SetPWM(uint8_t pwm);
void InitPWM(void);

#endif
