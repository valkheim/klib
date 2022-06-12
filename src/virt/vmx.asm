section .text
bits 64

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

global asm_enable_vmx
asm_enable_vmx:
    ; Set the 14th bit of cr4
    xor rax, rax
    mov rax, cr4
    or rax, 0x2000
    mov cr4, rax
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;