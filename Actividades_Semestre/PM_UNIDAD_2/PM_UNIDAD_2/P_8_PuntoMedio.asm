INCLUDE Irvine32.inc
;Integrantes Del Equipo
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
.data
; Área de Declaración de Variables
;PMedio = (X1 + X2)/2

cX1_8 db "Ingresa valor de X1: ", 0
cX2_8 db "Ingresa valor de X2: ", 0
cresultado_8 db "El resultado es: ", 0
.code
     main8 PROC
          ;lógica del Programa

          MOV EDX, OFFSET CX1_8
          CALL WRITESTRING
          CALL CRLF
          CALL READINT ;EAX
          MOV EBX, EAX ;RESPALDA EL VALOR DE X1
          CALL READINT

          MOV EDX, OFFSET CX2_8
          CALL WRITESTRING
          CALL CRLF
          CALL READINT ;EAX

          ADD EAX, EBX ; EAX = EAX + EBX


          MOV EDX,0
          MOV ECX,2
          DIV ECX  ;COCIENTE = EAX RESIDUO = EAX
          CALL CRLF

          MOV EDX, OFFSET CRESULTADO_8
          CALL WRITESTRING
          CALL WRITEINT
          CALL CRLF

          CALL WRITEINT

          exit
     main8 ENDP
     END main8