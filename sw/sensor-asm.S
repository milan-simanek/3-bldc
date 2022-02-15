#include "sensor.h"
#include <avr/io.h>
#include "udelay.h"


.EQU    __SREG__,       0x3F

#ifdef ASM_INT0

#if (SENSORSTEPS != 36) && (SENSORSTEPS != 24)
# error "sensor-asm.S: SENSORSTEPS != {36,24}"
#endif

; vector_2
.global INT0_vect
INT0_vect:	// angle=0 (home position) reached 
sbi 8,2	; checking for duplicities of INT0
	push r0
	in r0, __SREG__
	push r24
	push r25

	lds r24, Opts
	andi r24, OPT_ROTSYN
	brne INT0_ret

	lds r24, PosFract8
	sts d2, r24
	lds r25, SensorOffset8

	cp r24, r25
	brcs 1f			;
	brmi INT0_inc_rot	; direction PosFract8++

1:	cp r25, r24
	brcs 2f
	brmi INT0_dec_rot	; branch if flag[N]=1 <=> if MSB(r25-r24)==1

2:	sts PosFract8, r25

INT0_ret:

; checking for duplicities of INT0
lds r24, Int0cnt
inc r24
sts Int0cnt, r24

	pop r25
	pop r24
	out __SREG__, r0
	pop r0
cbi 8,2
	reti
INT0_inc_rot:
	lds r24, PosRots
	inc r24
	sts PosRots, r24
	rjmp 2b
INT0_dec_rot:
	lds r24, PosRots
	dec r24
	sts PosRots, r24
	rjmp 2b
#endif




#ifdef ASM_INT1

; vector_3
.global INT1_vect
INT1_vect:
	push r0
	in r0, __SREG__
	push r0
	push r1
        push r26
	push r27

	in r26, _SFR_IO_ADDR(PIND)
	subi r26, 0x08
	andi r26, 0x10
	lds r26, PosFract8
	brne INT1_same_bits		; branch if bits are the same

INT1_bits_differ:
#if SENSORSTEPS == 36
	; bits differ -> increse PosFract8 by +7(+8)
	subi r26, (-8)
	breq INT1_inc_rots

	mov r27, r26
	andi r27, 0x3F
        brne INT1_dec1
#elif SENSORSTEPS == 24
	; bits differ -> increse PosFract8 by +11(+10)
        subi r26, (-10)
        breq INT1_inc_rots
        
        mov r27, r26
        andi r27, 0x1F
        brne INT1_inc1
#endif
	rjmp INT1_storeFract8

INT1_inc_rots:
        lds r27, PosRots
	inc r27
	sts PosRots, r27
        rjmp INT1_storeFract8


INT1_dec_rots:
	lds r27, PosRots
	dec r27
	sts PosRots, r27
#if SENSORSTEPS == 36
	rjmp INT1_dec1
#elif SENSORSTEPS == 24
	rjmp INT1_inc1
#endif


INT1_same_bits:
#if SENSORSTEPS == 36
        ; bits are the same -> decrese PosFract8 by -7(-8)
	mov r27, r26
        subi r26, 7
        brcs INT1_dec_rots

	andi r27, 0x3F
        brne INT1_storeFract8
INT1_dec1:
	dec r26
#elif SENSORSTEPS == 24
        ; bity stejne -> decrese PosFract8 by -11(-10)
        mov r27, r26
        subi r26, 11
        brcs INT1_dec_rots

        andi r27, 0x1F
        brne INT1_storeFract8
INT1_inc1:
	inc r26
#endif
INT1_storeFract8:	
	sts PosFract8, r26

; commute
	lds r26, SensorDetecting
	tst r26
	brne INT1_end
	lds r26, Fault
	tst r26
	brne INT1_off
	lds r26, MotorAction
	tst r26
	breq INT1_off
	
	lds r27, PosFract8
        ; now MotorAction(r26) != 0
	add r26, r27
        ; r26: r26=round(r26/(256/6)), 
        ; i.e. (r26*6+128)/256 = (r26*12+1)/2/256

        ldi r27, 6
	mul r26, r27
	sbrc r0, 7	; round (+128)
	inc r1
        ldi r26, 0 
        cpse r27, r1	; if (r1==6) skip
	mov r26, r1

	ldi r27, 0
	subi r26, lo8(-(CommuteMAP))
	sbci r27, hi8(-(CommuteMAP))
	ld r26, X

INT1_out:
	in r27, _SFR_IO_ADDR(PORTB)
	andi r27, 0xC0
	or r27, r26
	out _SFR_IO_ADDR(PORTB), r27

INT1_end:

	pop r27
	pop r26
	pop r1
	pop r0
	out __SREG__, r0
	pop r0
	reti


INT1_off:
	ldi r26, 0x3F
	rjmp INT1_out


#endif
