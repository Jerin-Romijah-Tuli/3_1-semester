;;; Directives
 PRESERVE8
 THUMB

; Vector Table
 AREA RESET, DATA, READONLY
 EXPORT __Vectors
__Vectors
 DCD 0x20001000
 DCD Reset_Handler
 ALIGN 2

; Program Area
 AREA MYCODE, CODE, READONLY
 ENTRY
 EXPORT Reset_Handler
Reset_Handler
    ; User Code Starts
    ; High-Level Code Equivalent:
    ; int array[5];
    ; array[0] = 2;
    ; array[1] = array[0] * 8;
    ; R0 = array base address

    MOV R0, #0x20000000  ; R0 = Base address of array
    MOV R1, #2            ; R1 = array[0] = 2
    STR R1, [R0]          ; Store 2 at array[0]
    LDR R1, [R0]          ; Load array[0] into R1
    LSL R1, R1, #3        ; R1 = R1 << 3 = array[0] * 8
    STR R1, [R0, #4]      ; Store result at array[1]
STOP
    B STOP                ; Infinite loop

 END
