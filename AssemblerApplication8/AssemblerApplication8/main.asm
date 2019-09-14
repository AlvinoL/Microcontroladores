;
; AssemblerApplication8.asm
;
; Created: 17/06/2019 00:11:16
; Author : Alvino
;

;QUESTION 3 - LISTA MICROCONTROLADORES PARTE 2
;The label aNum represents the address of a 32-bit unsigned integer in SRAM (stored in little-endian order).
;Write a single instruction to load byte 2 (bytes are numbered starting with 0 as the least significant byte) of this integer into R0.

; Replace with your application code
start:
	.dseg
	aNum: .byte 4
	.cseg
	ldi r16, 0xAA
	sts aNum, r16
	ldi r16, 0xBB
	sts aNum+1, r16
	ldi r16, 0xCC
	sts aNum+2, r16
	ldi r16, 0xDD
	sts aNum+3, r16
	
	lds r0, aNum+2

    rjmp start
