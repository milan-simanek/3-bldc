#include <avr/io.h>
#include <avr/interrupt.h>
#include "globals.h"
#include "passive-wait.h"
#include "comasm.h"
#include "com.h"


//#define BAUD	9600
#define BAUD	38400

char ComRxBuf[COM_RXBUFS_SIZE];
char ComTxBuf[COM_TXBUF_SIZE];
uchar ComTxHead,	// sem vkladame znaky k odeslani 
      ComTxTail,	// odtud se znaky odesilaji
      ComRxHead,	// sem prichazeji prijate znaky
      ComRxTail;	// odtud prijate znaky zpracovavam


ISR(USART_RX_vect) { // prijaty znak
  uchar p,c;
  c=UDR0;
//LEDOFF(); if (c=='1') LEDON();
if (c==0x0D)c=0;
  if (c==0x0D) return;
  if (c==0x0A) c=0;
  p=ComRxHead;
  ComRxBuf[p]=c;
  if (!c) { // konec zpravy: prechod na dalsi buffer
    if (((p+1)&COM_RXBUF_MASK)==0) { // byla to prilis dlouha zprava
      p&=~COM_RXBUF_MASK;
    } else {
      p|=COM_RXBUF_MASK;	// jdi na konec bufferu
      p++;p&=COM_RXBUFS_MASK;	// jdi na zacatek dalsiho
      if ((ComRxTail&~COM_RXBUF_MASK)==p) { // zadny dalsi buffer neni volny
        p=ComRxHead&~COM_RXBUF_MASK; // zahodim aktualni buffer
      } else {	// predavam data
//    LEDON();
        Action|=ACT_COM; 
      }
    }
  } else {
    if ((p+1)&COM_RXBUF_MASK) p++; // pri preteceni bufferu neposunuj - zahod zbyle znaky
  }
  ComRxHead=p;
}

// vector_19
ISR(USART_UDRE_vect) { // Tx UDR empty
  if (ComTxHead==ComTxTail) UCSR0B&=~(1<<UDRIE0); // zakazu preruseni
  else {
    UDR0=ComTxBuf[ComTxTail];
    ComTxTail=(ComTxTail+1)&COM_TXBUF_MASK;
  }
}

char *ComGetMsg(void) { // volat jen kdyz je dostupna zprava (Action&ACT_COM)
  return ComRxBuf+ComRxTail;
}
void ComDelMsg(void) { // volat jen kdyz je dostupna zprava (Action&ACT_COM)
                        // ComGetMsg opet nastavi Action, pokud je prijata i dalsi zprava
  ComRxTail=(ComRxTail+COM_RXBUF_SIZE)&COM_RXBUFS_MASK;
  asm(
  "  cli			\n"
  "  lds r22, ComRxHead		\n"
  "  andi r22, %1		\n"	// zacatek bufferu, kam prichazeji data
  "  cp %0, r22			\n"
  "  breq 1f			\n"	// skoci, kdyz neni dalsi zprava
  "  lds r22, Action		\n"
  "  ori r22, %2		\n"
  "  sts Action, r22		\n"
  "1:				\n"
  "  sei			\n"
  :			/* vystupni parametry */
  :  "r" (ComRxTail),	/* vstupni parametry */
     "M" (0xFF-COM_RXBUF_MASK),
     "M" (ACT_COM)
  :  "r22"		/* pouzite registry */
  );
}
void notused_ComSendMsg(char *msg) {	// vlozi znaky do ComTxHead
  asm(
  "  lds r20, ComTxHead         \n"
  "1:                           \n"
  "  ld r19, Y+                 \n"
  "  tst r19                    \n"
  "  breq 3f                    \n"
  "  ldi r26, lo8(ComTxBuf)     \n"     // X
  "  ldi r27, hi8(ComTxBuf)     \n"
  "  add r26, r20               \n"
  "  adc r27,__zero_reg__       \n"
  "  inc r20                    \n"
  "  andi r20, %0               \n"
  "2:                           \n"
  "  lds r21, ComTxTail         \n"
  "  cp r20, r21                \n"
  "  breq 2b                    \n"
  "  st X+, r19                 \n"
  "  sts ComTxHead, r20         \n"
  "  sts %2, %1			\n"	// enable UDR int
  "  rjmp 1b			\n"
  "3:                           \n"
  :                     /* vystupni argumenty */
  : "M" (COM_TXBUF_MASK),    /* vstupni argumenty  */
    "r" ( (1<<RXCIE0)|(1<<UDRIE0)|(1<<RXEN0)|(1<<TXEN0) ),	/* default value for UCSR0B */
    "i" (_SFR_MEM_ADDR(UCSR0B)),
    "y" (msg)
  : /* pouzite registry */
    "r19",                      // data
    "r20",                      // TxHead
    "r21",                      // TxTail
    "r26","r27"//,              // X=pracovni pointer do ring bufferu
    //"r28","r29"                       // Y=msg
  );
}

void InitCom(void) {
  UCSR0A=(1<<TXC0)	// reset TxC INT
        |(0<<U2X0)	// no Double Speed
        |(0<<MPCM0);	// no Multi Processor Mode
  UCSR0B=(0<<RXCIE0)	// RX Complete Interrupt Enable
        |(0<<TXCIE0)	// TX Complete Interrupt Enable
        |(0<<UDRIE0)	// UDR Empty Interrupt Enable
        |(0<<RXEN0)	// RX Enable
        |(0<<TXEN0)	// TX Enable
        |(0<<UCSZ02)	// 9bits/byte ? 0=8bits, 1=9bits
        |(0<<TXB80);	// 9th bit for TX (not used)
  UCSR0C=(00<<UMSEL00)  // Asynchronous USART
        |(00<<UPM00)	// Parity disabled
        |(0<<USBS0)	// 0:1stop bit, 1:2stop bits
        |(11<<UCSZ00)	// 8-bits
        |(0<<UCPOL0);	// clock polarity (for synchronous only)
  UBRR0=F_CPU/16/BAUD+0.5-1;
  UCSR0B=(1<<RXCIE0)	// RX Complete Interrupt Enable
        |(0<<TXCIE0)	// TX Complete Interrupt Enable
        |(0<<UDRIE0)	// UDR Empty Interrupt Enable
        |(1<<RXEN0)	// RX Enable
        |(1<<TXEN0)	// TX Enable
        |(0<<UCSZ02)	// 9bits/byte ? 0=8bits, 1=9bits
        |(0<<TXB80);	// 9th bit for TX (not used)
}

