INCLUDE c:\Users\ABC\.vscode\extensions\istareatscreens.masm-runner-0.4.5\native\irvine\Irvine32.inc

.data
var1 BYTE 1

.code
main PROC
    mov eax, 0           ; Clear EAX
    movzx eax, var1      ; Move var1 into EAX with zero extension
    call DumpRegs        ; Display register values

    exit
main ENDP
END main
