INCLUDE Irvine32.inc

.data

.code
main proc 
    mov eax, 5
    call WriteDec
    call Crlf

;Using label to make seperate code chunk

jmp L2  ; jump cmd is used to escape coming code and jump dirct on code chunk with jmp

L1:
    mov eax, 6
    call WriteDec
    call Crlf

L2:
    mov eax, 7
    call WriteDec

exit
main ENDP
end main