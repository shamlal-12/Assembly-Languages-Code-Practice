INCLUDE Irvine32.inc

.data
    promptA      BYTE "Enter the first 32-bit integer (A): ", 0
    promptB      BYTE "Enter the second 32-bit integer (B): ", 0
    andMsg       BYTE "A AND B  = ", 0
    orMsg        BYTE "A OR B   = ", 0
    xorMsg       BYTE "A XOR B  = ", 0
    notMsg       BYTE "NOT A    = ", 0

    numA         DWORD ?
    numB         DWORD ?
    boolResult   DWORD ?

.code
main PROC

    ; Prompt and read A
    mov edx, OFFSET promptA
    call WriteString
    call ReadInt
    mov numA, eax

    ; Prompt and read B
    mov edx, OFFSET promptB
    call WriteString
    call ReadInt
    mov numB, eax

    ; Perform A AND B
    mov eax, numA
    and eax, numB
    mov boolResult, eax
    mov edx, OFFSET andMsg
    call WriteString
    mov eax, boolResult
    call WriteInt
    call Crlf

    ; Perform A OR B
    mov eax, numA
    or eax, numB
    mov boolResult, eax
    mov edx, OFFSET orMsg
    call WriteString
    mov eax, boolResult
    call WriteInt
    call Crlf

    ; Perform A XOR B
    mov eax, numA
    xor eax, numB
    mov boolResult, eax
    mov edx, OFFSET xorMsg
    call WriteString
    mov eax, boolResult
    call WriteInt
    call Crlf

    ; Perform NOT A
    mov eax, numA
    not eax
    mov boolResult, eax
    mov edx, OFFSET notMsg
    call WriteString
    mov eax, boolResult
    call WriteInt
    call Crlf

    ; Exit
    exit

main ENDP
END main
