;
; AssemblerApplication7.asm
;
; Created: 16/06/2019 04:14:47
; Author : Alvino
;


;QUESTION 2 - LISTA MICROCONTROLADORES PARTE 2
;The label lp is defined in a program and represents the address of the first instruction in some loop.
;Write a short assembly language sequence (part of the same program containing the loop) that will copy the most significant byte of this instruction into R0.
;Remember that instructions are words and are stored in little-endian order.
;When an instruction is 32-bits in length, it is considered as two separate words, not a doubleword, so each word is independently stored in little-endian order.

;ANSWER
; Replace with your application code
;lp is stored with little-endian, but high is the first acess on the memory
;
start:
    lp: jmp ab
	nop
	nop
	ab: nop
	ldi ZL, low(lp+1)
	ldi ZH, high(lp+1)
	lpm r0, Z
    rjmp start
