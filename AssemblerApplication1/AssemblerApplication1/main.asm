;
; AssemblerApplication1.asm
;
; Created: 09/05/2019 13:11:39
; Author : Alvino
;


; Replace with your application code
;start:
;    inc r16
;    rjmp start


ldi r16, 1
add r16, r16
loop: rjmp loop
