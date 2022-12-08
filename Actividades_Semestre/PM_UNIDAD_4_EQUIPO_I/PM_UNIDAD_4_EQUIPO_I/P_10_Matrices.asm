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
     main10 PROC
          ;lógica del Programa
          MOV EDI, 0  ;FILAS
          MOV ESI, 0 ;COLUMNAS
          MOV EAX,0
          MOV AL, MATRIZ[EDI+ESI]
          CALL WRITEDEC
          CALL CRLF
     

          exit
     main10 ENDP
     END main10