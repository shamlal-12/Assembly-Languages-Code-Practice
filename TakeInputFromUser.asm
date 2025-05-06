INCLUDE Irvine32.inc

.data
array DWORD 10 DUP(0)        

.code

SetColor PROC                
    mov eax, green + (lightGray * 16)
    call SetTextColor
    ret
SetColor ENDP

main PROC
    call SetColor            

    mov ecx, 10             
    mov esi, OFFSET array    

getInput:
    call ReadInt             
    mov [esi], eax           
    add esi, 4               
    loop getInput            

    mov esi, OFFSET array    
    mov ecx, 10 * 4          
    call DumpMem             
    call WaitMsg             
    exit

main ENDP
END main
