;Integrantes:
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
INCLUDE Irvine32.inc
.data
; Área de Declaración de Variables
ING_NUM_29 DB "INGRESE UN NUMERO:", 0
X_29 DB "x", 0
IGUAL_29 DB "=", 0
AUX_29 DWORD 0
M_MENSAJE BYTE "Linea", 0dh,0dh  
M_TITULO db "Tablas de Multiplicar", 0

.code
     main29 PROC
          ;Lógica del Programa
          MOV EDX, OFFSET ING_NUM_29
          MOV EBX, OFFSET M_TITULO
          CALL MSGBOX

		  CALL READINT

          MOV AUX_29,EAX

		  MOV ECX, 10
          MOV EBX, 1
          CALL CRLF

          CALL WAITMSG
          CALL CRLF

          CICLO:
              MOV EAX, 1000
              CALL DELAY

              MOV EAX,AUX_29
              CALL WRITEDEC
              MOV EDX, OFFSET X_29
              CALL WRITESTRING
              MOV EAX, EBX
              CALL WRITEDEC
              INC EBX

              MOV EDX, OFFSET IGUAL_29
              CALL WRITESTRING
              MUL AUX_29

              CALL WRITEDEC

              CALL CRLF
              
              
             LOOP CICLO
             

          exit          
     main29 ENDP
     END main29