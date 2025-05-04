INCLUDE Irvine32.inc

.data
var1 byte 4
var2 byte 1
var3 byte 2

.code
main PROC
    mov eax,0
    mov al, var1
    sub al, var2

    movzx ax,al

    movzx bx, var3
    sub ax,bx

    call WriteDec
    call crlf
    call dumpregs

    exit
main ENDP
end main