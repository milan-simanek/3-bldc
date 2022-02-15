#ifndef _GLOBALS_H_
#define _GLOBALS_H_

// XTAL 16 MHz, F_CPU=16MHz

#define F_XTAL	16000000
#define CLK_PRESCALER	0


#define CLK_DIVISOR 	(1<<(CLK_PRESCALER))
#define F_CPU		((F_XTAL)/(CLK_DIVISOR))

#ifndef NULL
#define NULL 0
#endif
#define uchar unsigned char

#define OPT_ROTSYN	1
#define OPT_AUTOROT	2
#define OPT_IGNFLT	4

#ifndef __ASSEMBLER__
extern char Opts;
extern unsigned char Int0cnt;

extern char dbgf;
#define ifdbg(a) if (dbgf&(a))
#endif

#endif
