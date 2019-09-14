;
; AssemblerApplication6.asm
;
; Created: 13/06/2019 18:43:49
; Author : Alvino
;


;QUESTION 1 - LISTA MICROCONTROLADORES PARTE 2
;Write a short assembly language program to load three characters from flash into registers R0, R1, and R2, and then loop indefinitely.
;The characters are to be your initials defined in a statement like this: myInitials: .db "JQS". Test the program in the simulator.


; Replace with your application code
myInitials: .db "ALJ", '\0'; 414c4a + padding (without warning)
start:
	;armazena endereço de myInitials H e L
	ldi ZH, high(myInitials*2)
	ldi ZL, low(myInitials*2)
	;carrega primeiro valor de Z (high) em r0
	lpm r0, Z
	;incrementa o ponteiro de Z para o low
	adiw Z, 1
	;carrega o segundo valor de Z (low) em r1
	lpm r1, Z
	
	;incrementa o ponteiro de Z para o low
	adiw Z, 1
	;carrega o segundo valor de Z (low) em r2
	lpm r2, Z
    rjmp start
