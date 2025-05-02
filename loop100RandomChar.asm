INCLUDE Irvine32.inc

.data
charToShow byte 'S'
cnt DWORD 100
row BYTE ?
colmn BYTE ?

.code

main PROC 
    call Randomize
    mov ecx, cnt

Display:
    mov eax, 80
    call randomRange
    mov colmn, al
    mov dl, colmn 

    mov eax, 25
    call randomRange
    mov row, al
    mov dh, row

    call gotoxy

    ;Show screen
    mov al, charToShow
    call writeChar

    ;dilay
    mov eax, 100
    call delay

    loop Display

    exit

    main ENDP
    END main
