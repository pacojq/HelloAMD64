.code
main_16bit proc

	; General Purpose, with low and high parts
	; ax, bx, cx, dx
	; ax -> axh | axl


	; if we want to modify bx, we have to push and pop rbx,
	; since we need to keep that value untouched
	push rbx

	mov bx, 29
	mov bh, 67

	pop rbx

	mov ax, -1 ; we can move data into the whole register
	mov al, 0  ; or just into its low / high sections

	ret
main_16bit endp
end