INCLUDE Irvine32.inc 

.data
arr byte 1,2,3,4

.code
main PROC 
    mov esi, offset arr
    mov eax,0
    mov al, [esi]
call WriteDec
call DumpRegs

exit
main ENDP
end main