INCLUDE Irvine32.inc
;Integrantes Del Equipo
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
.data
; Área de Declaración de Variables
.code
     main1 PROC
          ;lógica del Programa

          ;salto incondicionales ----->>> JMP

          MOV EAX, 10
          MOV EBX, 5

          JMP SALIR

          ADD EAX, EBX

          SALIR:

            CALL WRITEDEC
            CALL CRLF
          exit
     main1 ENDP
     END main1