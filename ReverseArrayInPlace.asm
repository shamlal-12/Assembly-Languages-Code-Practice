INCLUDE Irvine32.inc

.data
arr DWORD 10, 20, 30, 40, 50
size = LENGTHOF arr        
typeSize = TYPE arr       
lastOffset = (size - 1) * typeSize
temp DWORD ?

.code
main PROC
    
    mov esi, OFFSET arr                 
    mov edi, OFFSET arr
    add edi, lastOffset       

    mov ecx, size
    mov eax, 0
HalfLoop:
    add eax, 1
    sub ecx, 2
    cmp ecx, 0
    jg HalfLoop
    mov ecx, eax     

ReverseLoop:
    mov eax, [esi]
    mov ebx, [edi]

    mov [esi], ebx
    mov [edi], eax

    add esi, typeSize
    sub edi, typeSize

    loop ReverseLoop

    mov esi, OFFSET arr
    mov ecx, size

PrintLoop:
    mov eax, [esi]
    call WriteDec
    call Crlf
    add esi, typeSize
    loop PrintLoop

    exit
main ENDP
END main
