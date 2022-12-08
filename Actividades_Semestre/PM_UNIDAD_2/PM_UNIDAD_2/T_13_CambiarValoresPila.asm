;Integrantes:
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
INCLUDE Irvine32.inc
.data
; Área de Declaración de Variables
INGRESA_NUMERO_27 DB "INGRESA UN NUMERO PARA INGERSAR EN LA PILA: ", 0
INGRESA_NUMERO2_27 DB "INGRESA OTRO NUMERO PARA INGERSAR EN LA PILA: ", 0
RESULTADO_27 DB "EL PRIMER VALOR ES:"
RESULTADO2_27 DB "EL SEGUNDO VALOR ES:"

.code
     main27 PROC
          ;Lógica del Programa

          MOV EDX, OFFSET INGRESA_NUMERO_27
          CALL WRITESTRING
          CALL READINT
          CALL CRLF
          PUSH EAX
          MOV EDX, OFFSET INGRESA_NUMERO2_27
          CALL WRITESTRING
          CALL READINT
          PUSH EAX
          CALL CRLF
          MOV EDX, OFFSET RESULTADO_27
          CALL WRITESTRING
          POP EAX
          CALL WRITEDEC
          CALL CRLF
          CALL CRLF
          MOV EDX, OFFSET RESULTADO2_27
          CALL WRITESTRING
          POP EAX
          CALL WRITEDEC
          CALL CRLF

          exit          
     main27 ENDP
     END main27