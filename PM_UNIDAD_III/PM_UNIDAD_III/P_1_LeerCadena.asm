INCLUDE Irvine32.inc
;Integrantes Del Equipo
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
.data
; Área de Declaración de Variables

cadena_1 db 20 dup(65)

.code
     main1 PROC
          ;lógica del Programa

          MOV ECX, 10  ;MAXIMO SE VAN A LEER 10 CARACTERES

          MOV EAX, 12   ; VALOR ALEATORIO PARA REALIZAR LA PRUEBA
          CALL WRITEDEC
          CALL CRLF

          MOV EDX, OFFSET CADENA_1

          CALL READSTRING
          CALL WRITEDEC
          CALL CRLF
          CALL WRITESTRING
          CALL CRLF



          exit
     main1 ENDP
     END main1