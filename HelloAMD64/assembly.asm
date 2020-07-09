.code
SomeFunction proc
	mov rax, 123  ; If there's a value in the register rax, C++ will take it as return value
	ret
SomeFunction endp
end