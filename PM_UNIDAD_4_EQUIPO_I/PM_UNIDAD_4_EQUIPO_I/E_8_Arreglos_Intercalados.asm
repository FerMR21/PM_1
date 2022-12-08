INCLUDE Irvine32.inc
;INTEGRANTES DEL EQUIPO
;Gonzalez Saldivar Luis Roberto
.data

ARREGLO_10 BYTE 1,2,3,4,5,6,7,8,9

; Área de Declaración de Variables
.code
     main28 PROC
          ;lógica del Programa
          ;DADO UN ARREGLO DE 10 POSICIONES IMPRIMIR EL CONTENIDO DEL ARREGLO, DE UNA POSICION SI Y UNA NO
          ; DEL USUARIO. E IMPRIMIR LA SUMA ALCANZADA
          MOV ECX, SIZEOF ARREGLO_10
          MOV EDI, 0
          
          CICLO:
            MOV EAX, 0
            MOV EDX, 0
            MOV EBX, 2
            MOV EAX, EDI
            DIV EBX
            CMP EDX, 0
            JZ IMPAR
            CONTINUAR:
            INC EDI
          LOOP CICLO

          JMP ESCAPE

          IMPAR:
            MOV AL, ARREGLO_10[EDI]
            CALL WRITEDEC
            CALL CRLF
            JMP CONTINUAR

            ESCAPE:
            CALL CRLF

          exit
     main28 ENDP
     END main28