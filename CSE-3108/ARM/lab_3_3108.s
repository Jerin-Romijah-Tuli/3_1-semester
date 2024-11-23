;;; Directives
    PRESERVE8
    THUMB       
 
; Vector Table Mapped to Address 0 at Reset
; Linker requires __Vectors to be exported

    AREA    RESET, DATA, READONLY
    EXPORT  __Vectors
 
__Vectors 
    DCD  0x20001000 
      ; stack pointer value when stack is empty
    DCD  Reset_Handler  ; reset vector
    ALIGN
 
; The program
; Linker requires Reset_Handler
    AREA    MYCODE, CODE, READONLY
 
    ENTRY
    EXPORT Reset_Handler
Reset_Handler
  LDR   R2, =1         
  LDR   R3, =1         

FOR
  LDR   R1, [R2]       
  MUL   R1, R1, #5     
  STR   R1, [R2]       

  LDR   R1, [R3]       
  ADD   R1, R1, #1     
  STR   R1, [R3]       

  CMP   R1, #11        
  BNE   FOR       

		
STOP  
   B  STOP 

  
    END
