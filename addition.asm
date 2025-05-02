INCLUDE Irvine32.inc

.data
var1 byte 2
var2 byte 3

.code
main proc

mov eax, 0
mov al, var1
add al, var2


call WriteDec
call DumpRegs

exit
main ENDP
end main