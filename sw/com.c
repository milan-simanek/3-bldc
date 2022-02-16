#include <avr/io.h>
#include <avr/interrupt.h>
#include "globals.h"
#include "passive-wait.h"
#include "com.h"
#include "usart-cfg.h"

char ComRxBuf[RXBUFLEN];
uchar ComRxHead,	// data from INT
      ComRxMsg;		// the last (still incomplete) message


ISR(USART_RX_vect) {	// a new character received
  uchar p,c;
  c=UDR0;
  if (c==0x0D) c=0;
  if (c==0x0A) c=0;
  p=ComRxHead;
  if (p>=RXBUFLEN) {	// buffer overflow
    if (!c) ComRxHead=ComRxMsg;	// drop currently arriving message
    return;
  }
  ComRxBuf[p++]=c;
  ComRxHead=p;
  if (!c) {		// end of message
    ComRxMsg=p;
    Action|=ACT_COM; 
  }
}

const char *ComGetMsg(void) { // volat jen kdyz je dostupna zprava (Action&ACT_COM)
  return ComRxBuf;
}
void ComDelMsg(void) { // volat jen kdyz je dostupna zprava (Action&ACT_COM)
                        // ComGetMsg opet nastavi Action, pokud je prijata i dalsi zprava
  asm volatile(
  "  cli			\n"
  "  lds r22, ComRxMsg		\n"
  "  tst r22			\n"
  "  breq 1f			\n"	// nothing to delete
  "  ldi r26, lo8(ComRxBuf)	\n"
  "  ldi r27, hi8(ComRxBuf)	\n"
  "  movw r30, r26		\n"
  "  lds r23, ComRxHead		\n"
  "  add r23, r26		\n"
  "2:				\n"	// loop: find the next mesage
  "  ld r24, X+			\n"
  "  tst r24			\n"
  "  brne 2b			\n"
  "  mov r25, r26		\n"
  "  sub r25, r30		\n"	// r25:= shift
  "3:				\n"	// loop: move/shift the rest of messages
  "  ld r24, X+			\n"
  "  st Z+, r24			\n"
  "  cp r23, r26		\n"
  "  brne 3b			\n"
  "  subi r23, lo8(ComRxBuf)	\n"	// recover ComRxHead
  "  cpi r23, %0		\n"	// ComRxHead is shifted only if does not indicate buffer overflow
  "  breq 4f			\n"
  "  sub r23, r25		\n"
  "  sts ComRxHead, r23		\n"
  "4:				\n"
  "  sub r22, r25		\n"	// ComRxMsg is shifted
  "  sts ComRxMsg, r22		\n"
  "  breq 1f			\n"	// no more messages in the queue
  "  lds r22, Action		\n"
  "  ori r22, %1		\n"
  "  sts Action, r22		\n"
  "1:				\n"
  "  sei			\n"
  :					// output
  :  "M" (RXBUFLEN),			// input
     "M" (ACT_COM)
  :  "r22", "r23","r24","r25","r26","r27","r28","r30","r31"	// registers used
  );
}

