INCLUDE Irvine32.inc
;Integrantes Del Equipo
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
.data
; Área de Declaración de Variables
ARREGLO BYTE 1,2,3,4,5,6,7,8,9,10
NUM DB "INGRESE UN NUMERO", 0
SUM_26 DWORD 0
.code
     main26 PROC
          ;lógica del Programa

          MOV EDX, OFFSET NUM
          CALL WRITESTRING
          CALL CRLF
          CALL READINT
          CALL CRLF


          MOV ECX, SIZEOF ARREGLO
          MOV EDI, 0
          MOV EAX, 0
          
          
          CICLO:
            MOV EAX, 0
            MOV AL, ARREGLO[EDI]
            CALL WRITEDEC
            CALL CRLF
            INC EDI
            MOV SUM_26, EAX
            

     

          exit
     main26 ENDP
     END main26