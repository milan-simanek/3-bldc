#include <avr/io.h>
#include "comasm.h"

#define ALLOW_CALL_FROM_INT

#define __zero_reg__ r1

.EQU StartTX_data, (1<<RXCIE0)|(1<<UDRIE0)|(1<<RXEN0)|(1<<TXEN0)
.EQU StartTX_port, _SFR_MEM_ADDR(UCSR0B)
.EQU TXBUF_MASK, COM_TXBUF_MASK
.EQU TXBUF_SIZE, COM_TXBUF_SIZE



comf_char:		// odesle znak + formatovaci retezec
; IN: X=ComTxBuf+ComTxHead r24=znak r20=ComTxHead Z=format
; meni: r20, r24, r26, r27
; OUT: X=ComTxBuf+ComTxHead r20=ComTxHead
  rcall comsend1char
comformat:		// odesle formatovaci retezec Z do dalsi konverze
  lpm r24, Z+
  cpi r24, '%'
  breq 1f
  cpi r24, 0
  brne comf_char
1:
  ret

comf_hex4:
; IN: X=ComTxBuf+ComTxHead r25:r24=data r20=ComTxHead
; meni: r0, r20, r23, r24, r26, r27
; OUT: X=ComTxBuf+ComTxHead r20=ComTxHead
  mov r23, r24
  mov r24, r25
  rcall comf_hex2
  mov r24, r23
  
comf_hex2:
; IN: X=ComTxBuf+ComTxHead r24=data r20=ComTxHead
; meni: r0, r20, r24, r26, r27
; OUT: X=ComTxBuf+ComTxHead r20=ComTxHead
  mov r0, r24
  swap r24
  rcall comf_hex1
  mov r24, r0

comf_hex1:
; IN: X=ComTxBuf+ComTxHead r24=data r20=ComTxHead
; meni: r20, r24, r26, r27
; OUT: X=ComTxBuf+ComTxHead r20=ComTxHead
  andi r24, 0x0F
  cpi r24, 10
  brmi 1f
  subi r24, 10+'0'-'A'
1:
  subi r24, -'0'

comsend1char:
; IN: X=ComTxBuf+ComTxHead r24=znak r20=ComTxHead
; meni: r20, r24, r26, r27
; OUT: X=ComTxBuf+ComTxHead r20=ComTxHead
  st X+, r24 
#ifdef ALLOW_CALL_FROM_INT
  brie 1f
  push r25
  mov r25,r20
  inc r25
  andi r25, TXBUF_MASK
  lds r24, ComTxTail
  cp r25, r24
  pop r25
  brne 1f
  ret
1:
#endif                
  inc r20                    
  andi r20, TXBUF_MASK
  brne 1f
#if COM_TXBUF_SIZE < 64
  sbiw r26, TXBUF_SIZE
#else
  subi r26, TXBUF_SIZE
  sbci r27, 0
#endif
1:
  lds r24, ComTxTail
  cp r20, r24                
  breq 1b
  sts ComTxHead, r20         
  ldi r24, StartTX_data
  sts StartTX_port, r24                      // enable UDR interrupt
  ret                    


;void ComFormat(PGM_P M);
.global ComFormat
ComFormat:
        movw r30, r24
        rcall comf_loadregs2
        rcall comformat

comf_saveregs:
        sts saved_Format, r30
        sts saved_Format+1, r31
        ret
comf_loadregs:
	lds r30, saved_Format
        lds r31, saved_Format+1
comf_loadregs2:
        lds r20, ComTxHead         
        ldi r26, lo8(ComTxBuf)          // X
        ldi r27, hi8(ComTxBuf)     
        add r26, r20               
        adc r27, __zero_reg__       
        ret

; void ComFChar(char x);
.global ComFChar
ComFChar:
  rcall comf_loadregs
  rcall comsend1char
  rcall comformat
  rjmp comf_saveregs

; void ComFHex1(uchar x);
.global ComFHex1
ComFHex1:
  rcall comf_loadregs
  rcall comf_hex1
  rcall comformat
  rjmp comf_saveregs

; void ComFHex2(uchar x);
.global ComFHex2
ComFHex2:
  rcall comf_loadregs
  rcall comf_hex2
  rcall comformat
  rjmp comf_saveregs

; void ComFHex4(unsigned x);
.global ComFHex4
ComFHex4:
  rcall comf_loadregs
  rcall comf_hex4
  rcall comformat
  rjmp comf_saveregs

; void ComFIHex4(int x);
.global ComFIHex4
ComFIHex4:
  rcall comf_loadregs
  mov r21, r24
  ldi r24, '+'
  tst r25
  brpl 1f
  ldi r24, '-'
  com r25
  com r21
  adc r21, r1
  adc r25, r1
1:
  rcall comsend1char
  mov r24, r21
  rcall comf_hex4
  rcall comformat
  rjmp comf_saveregs

; void ComFHex6(uint32_t x);
; IN: r25:r22      (r25=MSB r22=LSB), zobrazuje se r24:r23r22
.global ComFHex6
ComFHex6:
  push r22
  push r23
  rcall comf_loadregs
  rcall comf_hex2
  ldi r24,':'
  rcall comsend1char
  pop r25
  pop r24
  rcall comf_hex4
  rcall comformat
  rjmp comf_saveregs

; void ComFHex8(uint32_t x);
; IN: r25:r22      (r25=MSB r22=LSB)
.global ComFHex8
ComFHex8:
  push r22
  push r23
  rcall comf_loadregs
  rcall comf_hex4
  ldi r24,':'
  rcall comsend1char
  pop r25
  pop r24
  rcall comf_hex4
  rcall comformat
  rjmp comf_saveregs


	.data
        .comm saved_Format,2,1

