INCLUDE Irvine32.inc
.data
Base1_1 dword 25
Base2_1 dword 10
Altura_1 dword 5
Formula_1 dword 2
.code
     main9 PROC
          ;Lógica del Programa               
          ;Suma de las bases
          MOV EAX, Base2_1 
          ADD Base1_1, EAX
          MOV EAX, Base1_1 
          CALL WRITEINT
          CALL CRLF
          ;Multiplicar la suma de las bases por la altura
          MOV Base1_1, EAX
		  mul Altura_1
          CALL WRITEINT
          CALL CRLF
          ;Dividir el resultado entre 2
          mov edx, 0  
		  div Formula_1
          CALL WRITEINT
          CALL CRLF
  

          exit
     main9 ENDP
     END main9