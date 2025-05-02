INCLUDE Irvine32.inc 

.data
arr DWORD 1,2,3,4,5

.code
main proc
    mov ecx, LENGTHOF arr
    mov esi, 0 ;indexing strt from zero

LoopToAccessArray:
    mov eax, arr[esi * TYPE arr] ;Jump to number of bytes (It is scale factor indexing)
    call WriteDec
    call Crlf
    inc esi
    loop LoopToAccessArray

    exit
main ENDP
end main