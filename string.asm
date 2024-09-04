section .data
    hello db 'Hello, World!', 0   ; Define a string with a null terminator

section .text
    global _start                 ; Entry point for the program

_start:
    ; Write the string to stdout
    mov rax, 1                    ; syscall number for sys_write (1)
    mov rdi, 1                    ; file descriptor 1 is stdout
    mov rsi, hello                ; address of string to output
    mov rdx, 13                   ; number of bytes to write (length of 'Hello, World!')
    syscall                       ; invoke the system call

    ; Exit the program
    mov rax, 60                   ; syscall number for sys_exit (60)
    xor rdi, rdi                  ; exit code 0
    syscall                       ; invoke the system call
