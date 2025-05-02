INCLUDE Irvine32.inc

.data
arr DWORD 0, 2, 5, 9, 10
arrSize = 5
sum DWORD 0

.code
main PROC
    mov esi, OFFSET arr      
    mov ecx, arrSize
    dec ecx                  

    mov ebx, 0               

LoopForGap:
    mov eax, [esi+4]  ;next element
    sub eax, [esi]           
    add ebx, eax            

    add esi, 4              
    loop LoopForGap

    mov sum, ebx            
    mov eax, sum
    call WriteDec            
    call Crlf

    exit
main ENDP
END main
