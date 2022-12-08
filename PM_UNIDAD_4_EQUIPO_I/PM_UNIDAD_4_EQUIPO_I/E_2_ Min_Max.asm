INCLUDE Irvine32.inc
;Integrantes Del Equipo
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
.data
; Área de Declaración de Variables

ARREGLO BYTE 13,16,17,23,53
MAX_21 DB "EL numero maximo es: ", 0
MIN_21 DB " EL NUMERO MINIMO ES: ", 0
MAX DWORD 0
MIN DWORD 0
.code
     main21 PROC
          ;lógica del Programa

          MOV ECX, SIZEOF ARREGLO
          MOV EDI, 0
          MOV EAX, 0
          MOV AL, ARREGLO[EDI]
          MOV MAX, EAX
          MOV MIN, EAX
          

          CICLO:
            MOV EAX, 0
            MOV AL, ARREGLO[EDI]
            CMP EAX, MAX

            JG MAYOR

            CMP EAX, MIN

            JL MENOR
            VOLVER: 
            INC EDI
            LOOP CICLO

            JMP RESULTADO

            
            MAYOR:
            MOV MAX, EAX
            JMP VOLVER

            MENOR:
            MOV MIN, EAX
            JMP VOLVER

            RESULTADO:
            MOV EDX, OFFSET MAX_21
            CALL WRITESTRING
            CALL CRLF
            MOV EAX, MAX
            CALL WRITEDEC
            CALL CRLF

            MOV EDX, OFFSET MIN_21
            CALL WRITESTRING
            CALL CRLF
            MOV EAX, MIN
            CALL WRITEDEC
            CALL CRLF

          exit
     main21 ENDP
     END main21