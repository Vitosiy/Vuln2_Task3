;
; Шеллкод, выводящий сообщение с помощью DbgPrint.
;
; jwasm -bin -Fo sc.bin sc.asm
;
;

.686P
.model flat,stdcall
option casemap:none

sc segment

assume fs:nothing

start:
	; pushad
	; pushf
	
	call $+5
	pop ebx
	sub ebx, 5
	
STACK_LOCATION = 16

	nop
	nop
	nop
	nop

	add esp, STACK_LOCATION

	push [ebx + end_sc] ; socket
	push [ebx + end_sc + 4] ; CloseSocket addr
	ret

end_sc:
sc ends

end
