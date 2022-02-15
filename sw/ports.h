#ifndef _PORTS_H_
#define _PORTS_H_

/*********************** B ******************************/

#define PDEF_HI1	B,0,out,1	// phase 1/hi
#define PDEF_HI2 	B,1,out,1	// phase 2/hi
#define PDEF_HI3	B,2,out,1	// phase 3/hi
#define PDEF_LO1	B,3,out,1	// phase 1/lo
#define PDEF_LO2	B,4,out,1	// phase 2/lo
#define PDEF_LO3	B,5,out,1	// phase 3/lo
//#define PDEF_		B,6,,		// XTAL-1
//#define PDEF_		B,7,,		// XTAL-2

#define PORTLIST_B HI1,HI2,HI3,LO1,LO2,LO3

/*********************** C ******************************/

#define PDEF_FAULT	C,0,in,on	// motor FAULT
#define PDEF_CAO	C,1,in,off	// current sense
//!!!
#define PDEF_C2		C,2,out,off	// pull-up
#define PDEF_LEDKEY_STB	C,3,out,on	// LED&KEY module strobe
#define PDEF_LEDKEY_DIO	C,4,out,off	// LED&KEY module data in/out
#define PDEF_LEDKEY_CLK	C,5,out,on	// LED&KEY module clock
//#define PDEF_		C,6,,		// RESET

#define PORTLIST_C FAULT,CAO,C2,LEDKEY_STB,LEDKEY_DIO,LEDKEY_CLK

/*********************** D *******************************/

#define PDEF_RS_IN	D,0,in ,on	// RS-485 data IN
#define PDEF_RS_OUT	D,1,out,on	// RS-485 data OUT
#define PDEF_HOME	D,2,in,off	// rotation home position detected
#define PDEF_STEPA	D,3,in,off	// rotation sensor A
#define PDEF_STEPB	D,4,in,off	// rotation sensor B
#define PDEF_PWM	D,5,out,1	// [L] motor PWM
#define PDEF_D6		D,6,in,on	// pull-up
#define PDEF_D7		D,7,in,on	// pull-up

#define PORTLIST_D RS_IN,RS_OUT,HOME,STEPA,STEPB,PWM,D6,D7

/********************************************************/

#define PMULTIDEF_PHASES	HI1,HI2,HI3,LO1,LO2,LO3

// TCNT0 - 
// TCNT1 - 
// TCNT2 - 

//PCINT0: 
//PCINT1: 
//PCINT2: 


  
#endif

