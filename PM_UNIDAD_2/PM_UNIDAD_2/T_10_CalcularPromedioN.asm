;Integrantes:
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
INCLUDE Irvine32.inc
.data
; Área de Declaración de Variables
CADENA_10 DB "CUANTOS NUMEROS DESEA PROMEDIAR?",0
INGRESA_NUMERO_10 DB "INGRESA UN NUMERO: ", 0
RESULTADO_10 DB "EL PROMEDIO ES: ", 0

.code
     main20 PROC
          ;Lógica del Programa

          MOV EDX, OFFSET CADENA_10

          CALL WRITESTRING
          CALL CRLF
          CALL READINT
          CALL CRLF

          MOV ECX,EAX

          MOV ESI, ECX

          

          MOV EBX, 0

          CICLO:
                MOV EDX, OFFSET INGRESA_NUMERO_10
                CALL WRITESTRING
                CALL CRLF
                CALL READINT
                CALL CRLF
                ADD EBX, EAX
            LOOP CICLO
            MOV EAX,EBX

            MOV EDX, 0
            DIV ESI
                MOV EDX, OFFSET RESULTADO_10
                CALL WRITESTRING
                CALL WRITEDEC
                CALL CRLF
                

          exit          
     main20 ENDP
     END main20