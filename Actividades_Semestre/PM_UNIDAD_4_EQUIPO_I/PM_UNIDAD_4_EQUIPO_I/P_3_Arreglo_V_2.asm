INCLUDE Irvine32.inc
;Integrantes Del Equipo
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
.data
; Área de Declaración de Variables

ARREGLO BYTE 13,16,17,23,53
.code
     main3 PROC
          ;lógica del Programa

          MOV EAX, SIZEOF ARREGLO
          CALL WRITEDEC
          CALL CRLF
     

          exit
     main3 ENDP
     END main3