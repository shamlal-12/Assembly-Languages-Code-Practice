INCLUDE Irvine32.inc

.data
    value BYTE 0Fh      ; Initial value (15 in decimal, 00001111 in binary)

.code
main PROC
    mov al, value

    and al, 0Fh

    movzx eax, al
    call WriteDec
    call Crlf

    call WriteHex
    call Crlf


    exit
main ENDP

END main
