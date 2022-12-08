INCLUDE Irvine32.inc
;Integrantes Del Equipo
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
.data
; Área de Declaración de Variables

ARREGLO BYTE 1,2,3,4,5
RES_24 DB "EL PROMEDIO DEL ARREGLO ES: ", 0
AUX DWORD 0
.code
     main24 PROC
          ;lógica del Programa
          ;calcular el promedio de los elementos de un arregl

          MOV ECX, SIZEOF ARREGLO
          MOV EDI, 0
          MOV EAX, 0
          MOV EBX, 0

          MOV AUX, ECX
          
          CICLO:
            MOV EAX, 0
            MOV AL, ARREGLO[EDI]
            ADD EBX, EAX
            INC EDI
            LOOP CICLO

          MOV EDX, OFFSET RES_24
          CALL WRITESTRING
          MOV EDX, 0
          MOV EAX, EBX
          DIV AUX

          
          CALL WRITEDEC
          CALL CRLF



          
          
     

          exit
     main24 ENDP
     END main24