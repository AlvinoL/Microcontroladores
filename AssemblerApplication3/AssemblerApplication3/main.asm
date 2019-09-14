;
; AssemblerApplication3.asm
;
; Created: 28/05/2019 12:23:15
; Author : Alvino
;


; Replace with your application code
;while (m<n && a<b)
while_test:
	cp m, n ;skip if m<=n
	brge end_while
	cp a, b ;skip if a<=b
	brge end_while
	inc a
	inc b
	rjmp while_test

	end_while:
