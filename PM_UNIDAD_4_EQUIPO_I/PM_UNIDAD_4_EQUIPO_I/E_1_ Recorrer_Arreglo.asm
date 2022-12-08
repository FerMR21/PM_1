INCLUDE Irvine32.inc
;Integrantes Del Equipo
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
.data
; Área de Declaración de Variables

ARREGLO BYTE 13,16,17,23,53
.code
     main20 PROC
          ;lógica del Programa

          MOV ECX, SIZEOF ARREGLO
          MOV EDI, 0
          
          CICLO:
            MOV EAX, 0
            MOV AL, ARREGLO[EDI]
            
            CALL WRITEDEC
            CALL CRLF
            INC EDI
            LOOP CICLO

     

          exit
     main20 ENDP
     END main20


