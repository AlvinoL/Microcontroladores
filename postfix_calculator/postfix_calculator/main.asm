;
; postfix_calculator.asm
;
; Created: 02/09/2019 08:30:27
; Author : Alvino
;
; Replace with your application code

.def a = r17
.def b = r18
.def res = r19
ldi res, $FF

.def aux = r16

.def plus = r24
.def minus = r25
.def dollar = r20

ldi plus, $2B
ldi minus, $2D
ldi dollar, $24

ldi aux, low(RAMEND)
out SPL, aux
ldi aux, high(RAMEND)
out SPH, aux


calculator: .db 3,9,4,6,'+','-',2,'-', '+','$'

ldi ZH, high(calculator*2)
ldi ZL, low(calculator*2)

while_calculate:
	lpm aux, Z+

	;if r16 == '$' go_to: end_while
	cp aux, dollar
	breq end_while		

	;if r16 == '+' pop add
	cp aux, plus
	breq sum

	;if r16 == '-' pop sub
	cp aux, minus
	breq subt

	num:
		push aux
		rjmp while_calculate

	sum:
		pop a
		pop b
		add a, b
		push a
		rjmp while_calculate
	subt:
		pop b
		pop a
		sub a, b
		push a
		rjmp while_calculate


end_while:
	pop res

start:
	nop
    rjmp start
