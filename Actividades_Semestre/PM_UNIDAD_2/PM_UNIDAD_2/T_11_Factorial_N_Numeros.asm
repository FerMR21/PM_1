;Integrantes:
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
INCLUDE Irvine32.inc
.data
; Área de Declaración de Variables
CADENA_11 DB "DE QUE NUMERO DESEA SACAR EL FACTORIAL?",0
RESULTADO_11 DB "EL FACTORIAL ES: ", 0

.code
     main21 PROC
          ;Lógica del Programa

          MOV EDX, OFFSET CADENA_11

          CALL WRITESTRING
          CALL CRLF
          CALL READINT
          CALL CRLF

          MOV ECX,EAX
          
          MOV EAX, 1

          CMP ECX, 0

          JE RESULTADO


          CICLO:

            MUL ECX
            
            LOOP CICLO

            RESULTADO:

            MOV EDX, OFFSET RESULTADO_11
            CALL WRITESTRING
            CALL WRITEINT
            CALL CRLF
                

          exit          
     main21 ENDP
     END main21