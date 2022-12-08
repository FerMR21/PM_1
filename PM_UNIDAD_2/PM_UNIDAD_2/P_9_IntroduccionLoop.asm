INCLUDE Irvine32.inc
;Integrantes Del Equipo
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
.data
; Área de Declaración de Variables

.code
     main9 PROC
          ;lógica del Programa

          ;LA INSTRUCCION LOOP REALIZA UN CICLO DE N A 0 
          ;COMPRUEBA AL REGISTRO ECX Y REALIZA UNA ITERACION MIENTRAS QUE ECX SEA MAYOR QUE SERO
          ; == POR CADA ITERACION ECX DECREMENTA EN 1

          MOV EAX, 10D

          MOV ECX, 5

          CICLO:
            CALL WRITEDEC
            CALL CRLF
        LOOP CICLO

          exit
     main9 ENDP
     END main9