;Integrantes:
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
INCLUDE Irvine32.inc
.data
; Área de Declaración de Variables
INGRESA_NUMERO_23 DB "INGRESA UN NUMERO:", 0
INGRESA_MUL_23 DB "INGRESA CUANTAS VECES SE MULTIPLICARA:", 0
RESULTADO_X DB "x", 0
RESULTADO_IGUAL DB "=", 0
NUM_23 DWORD 0

.code
     main23 PROC
          ;Lógica del Programa
          MOV EDX, OFFSET INGRESA_NUMERO_23
		  CALL WRITESTRING
          CALL CRLF
		  CALL READINT
          MOV NUM_23,EAX
          MOV EDX, OFFSET INGRESA_MUL_23
		  CALL WRITESTRING
          CALL CRLF
		  CALL READINT 
		  MOV ECX, EAX 
          MOV EBX, 1
          CALL CRLF

          CICLO:
              MOV EAX,NUM_23
              CALL WRITEDEC
              MOV EDX, OFFSET RESULTADO_X
              CALL WRITESTRING
              MOV EAX, EBX
              CALL WRITEDEC
              INC EBX
              MOV EDX, OFFSET RESULTADO_IGUAL
              CALL WRITESTRING
              MUL NUM_23
              CALL WRITEDEC
              CALL CRLF
             LOOP CICLO
          exit          
     main23 ENDP
     END main23