.code
main_32and64bit proc

	; 32 bit registers are the same as 16 bit, but with an 'e' at the beginning
	; ax -> eax
	; bx -> ebx
	; cx -> ecx
	; dx -> edx
	; si -> esi
	; di -> edi
	; bp -> ebp
	; sp -> esp
	; 16 bit registers turn into the LOW part of 32 bit registers

	; 64 bit registers are again the same, but with an 'r' at the beginning
	; rax, rbx, rcx, rdx ...
	; PLUS eigth extra general purpose registers, witht their 32 and 16 bit equivalent
	; r8, r9, r10, r11, r12, r13, r14, r15
	; r8 ->  ======== r8 ======== | == r8d == | r8w | r8b
	; r8d accesses the 'double' (32 bit) lowest bits of r8
	; r8w accesses the 'word' (16 bit) lowest bits of r8
	; r8b accesses the 'byte' (8 bit) lowest bits of r8


	mov rax, -1

	mov al, 5
	mov ax, 17

	mov eax, 1 ; any time we use a 32 bit operation, the high bytes of the 64 bit register turn to 0!!!

	ret
main_32and64bit endp
end