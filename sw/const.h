#ifndef _CONST_H_
#define _CONST_H_

#include "globals.h"



#define MINRPM 60*1
#define MAXRPM 4000

// T1 = calculation of derivatives
// T1: CS:PRESCALER  1:1 2:8 3:64 4:256 5:1024
//#define T1_TOP		15999
//#define T1_CS		1
#define T1_DIV		15625
#define T1_CS		2
#define T1_PRESCALER	8
#define T1_CLKF		(F_CPU/T1_PRESCALER)	// 16MHz
#define T1_FREQ		(T1_CLKF/(T1_DIV))	// 1kHz
#define T1_TOP		(T1_DIV-1)
// T2 = independent timer
#define T2_DIV		125
#define T2_PRESCALER	1024
#define T2_CLKF		(F_CPU/T2_PRESCALER)	// 15625 [Hz]
#define T2_FREQ		(T2_CLKF/(T2_TOP+1))	// interrupt frequency 125 [Hz]
#define T2_TOP		(T2_DIV-1)
#define F_TICK		T2_FREQ
#define MST_SECOND	*T2_FREQ
#define MST_100MS	*(T2_FREQ/10)


#endif
