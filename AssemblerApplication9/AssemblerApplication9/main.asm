;
; AssemblerApplication9.asm
;
; Created: 17/06/2019 15:36:18
; Author : Alvino
;

;QUESTION 5 - LISTA MICROCONTROLADORES PARTE 2
;What instructions are needed to make Y point to the following SRAM location? myInitials .byte 3


; Replace with your application code
aux: .db "ALJ", '\0'; 414c4a
start:
	;numletters: .db PC-myInitials
	ldi ZH, high(aux*2)
	ldi ZL, low(aux*2)
	lpm r0, Z
	adiw Z, 1
	lpm r1, Z
	ldi ZH, high(aux*2 +1)
	ldi ZL, low(aux*2 +1)
	adiw Z, 1
	lpm r2, Z


	.dseg
	myInitials: .byte 3
	.cseg
	ldi r16, 0xAA
	sts myInitials, r0
	sts myInitials+1, r1
	sts myInitials+2, r2

	ldi YL, low(myInitials)
	ldi YH, high(myInitials)
	ld r3, Y
	adiw Y, 1
	ld r4, Y
	adiw Y, 1
	ld r5, Y

    rjmp start

