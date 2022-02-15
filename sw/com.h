#ifndef _COM_H_
#define _COM_H_

void InitCom(void);
char *ComGetMsg(void); // volat jen kdyz je dostupna zprava (Action&ACT_COM)
void ComDelMsg(void); // volat jen kdyz je dostupna zprava (Action&ACT_COM)
                      // ComDelMsg opet nastavi Action, pokud je prijata i dalsi zprava

#include <avr/pgmspace.h>

#define ComF(x) ComFormat(PSTR(x))
void ComFormat(PGM_P M);
void ComFChar(char x);
void ComFHex1(uchar x);
void ComFHex2(uchar x);
void ComFHex4(unsigned x);
void ComFIHex4(int x);
void ComFHex6(uint32_t x);
void ComFHex8(uint32_t x);



#endif
