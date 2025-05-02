INCLUDE Irvine32.inc

.data
arr DWORD 5, 10, 15, 20
size = LENGTHOF arr
typeSize = TYPE arr
temp DWORD ?

.code
main PROC
    ; Step 1: Save last element
    mov eax, arr[size - 1]
    mov temp, eax

    ; Step 2: Use ecx as loop counter, esi as index
    mov ecx, size
    dec ecx           
    mov esi, ecx       

ShiftLoop:
    mov eax, arr[esi - 1]
    mov arr[esi], eax
    dec esi
    loop ShiftLoop

    ; Step 3: Place saved value in arr[0]
    mov eax, temp
    mov arr[0], eax

    ; Step 4: Print result
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
