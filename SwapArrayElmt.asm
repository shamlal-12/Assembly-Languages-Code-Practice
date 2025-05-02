INCLUDE Irvine32.inc
.data
arr BYTE 3, 5, 7, 9, 11, 13

.code
main PROC
    mov esi, OFFSET arr
    mov ecx,3

LoopToSwap:
    mov al, [esi]
    mov bl, [esi +1]

    mov [esi], bl
    mov [esi+1], al

    add esi, 2
    loop LoopToSwap

    mov esi, OFFSET arr
    mov ecx, 6

DisplaySwapedValues:
    movzx eax, byte ptr [esi]
    call WriteDec
    call crlf
    inc esi
    loop DisplaySwapedValues

exit
main ENDP
end main