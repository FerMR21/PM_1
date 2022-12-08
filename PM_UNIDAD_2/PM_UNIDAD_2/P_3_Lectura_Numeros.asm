INCLUDE Irvine32.inc
;Integrantes Del Equipo
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
.data
; Área de Declaración de Variables


.code
     main2 PROC
          ;lógica del Programa

          MOV EAX, 10 ; VALOR INICIAL
          CALL WRITEINT ; IMPRIME EL VALOR DE EAX



          ;Leer numeros

          CALL READINT ;ALMECENA EL NUMERO INGRESADO POR EL USUARIO EN EAX



          CALL WRITEINT ; IMPRIME EL VALOR DE EAX
          CALL CRLF

        
          exit
     main2 ENDP
     END main2
