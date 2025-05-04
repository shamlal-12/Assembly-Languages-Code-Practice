INCLUDE Irvine32.inc

.data
var1 byte 4 
var2 byte 5 
var3 byte 3 

.code
main PROC
    mov eax, 0
    mov al, var1        ; al = 4
    add al, var2        ; al = al + 5 = 9

    movzx ax, al        

    movzx bx, var3
    add ax, bx        ; ax = 9 + 3 = 12

    call WriteDec      
    exit
main ENDP
END main
