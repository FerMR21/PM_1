INCLUDE Irvine32.inc
;Integrantes Del Equipo
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
.data
; Área de Declaración de Variables



.code
     main2 PROC
          ;lógica del Programa

          CALL RANDOMIZE ; ESTABLECE EL VALOR DE LA SEMILLA

          MOV EAX, 10
          CALL WRITEINT
          CALL CRLF
          CALL RANDOM32
          CALL WRITEINT
          CALL CRLF

          exit
     main2 ENDP
     END main2