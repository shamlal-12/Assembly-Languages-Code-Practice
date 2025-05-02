INCLUDE Irvine32.inc

.data
arr byte 3,4,5,6

.code 
main proc 

mov eax,0
mov al,[arr+1]
call WriteDec
call DumpRegs

exit
main ENDP
end main