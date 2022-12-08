INCLUDE Irvine32.inc
;Integrantes Del Equipo
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
.data
; Área de Declaración de Variables

matriz byte 5,10,15
        byte 7,8,9
        byte 3,6,11

.code
     main14 PROC
          ;lógica del Programa

          MOV EAX, SIZEOF MATRIZ
          CALL WRITEDEC
     

          exit
     main14 ENDP
     END main14