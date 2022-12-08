INCLUDE Irvine32.inc
;Integrantes Del Equipo
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
.data
; Área de Declaración de Variables

.code
     main9 PROC
          ;lógica del Programa
          MOV ECX, 1000

          MOV EBX, 1


          CICLO:
          MOV EAX, EBX
          INC EBX
          CALL WRITEDEC
          CALL CRLF
          MOV EAX, 1000 ; MS
          CALL DELAY

          LOOP CICLO
     

          exit
     main9 ENDP
     END main9