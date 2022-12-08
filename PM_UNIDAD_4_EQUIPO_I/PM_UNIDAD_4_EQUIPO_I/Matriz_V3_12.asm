INCLUDE Irvine32.inc
;Integrantes Del Equipo
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
.data
; Área de Declaración de Variables
matriz byte 5,6,8,10
        byte 12,15,9,7
        byte 13,16,4,3

.code
     main12 PROC
          ;lógica del Programa
          CALL READINT
          MOV EBX,4
          MUL EBX
          MOV EDI, EAX;COLUMNAS
          CALL READINT
          MOV ESI,EAX
          MOV EAX,0
          MOV AL, MATRIZ[EDI+ESI]
          CALL WRITEDEC
          CALL CRLF
     

     

          exit
     main12 ENDP
     END main12