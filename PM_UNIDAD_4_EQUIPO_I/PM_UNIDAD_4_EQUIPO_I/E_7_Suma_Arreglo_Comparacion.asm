INCLUDE Irvine32.inc
;INTEGRANTES DEL EQUIPO
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
.data

ARREGLO_9 BYTE 4,2,7,6,2,10,8,1,7,24
NUM_9 DB " INGRESA UN NUMERO : ", 0
SUMA_9 DB " LA SUMA DE LOS NUMEROS ES : ", 0
NUM_USUARIO DWORD 0

; Área de Declaración de Variables
.code
     main27 PROC
          ;lógica del Programa
          ;DADO UN ARREGLO DE 10 ELEMENTOS, Y UN NUMERO DADO POR EL USUARIO, COMENZANDO DESDE LA PRIMERA POSICIÓN
          ;REALIZAR LA SUMA DE LOS ELEMENTOS DE ARREGLO DE UNO EN UNO, MIENTRAS QUE LA SUMA SEA MENOR QUE EL NUMERO
          ; DEL USUARIO. E IMPRIMIR LA SUMA ALCANZADA
          MOV ECX, SIZEOF ARREGLO_9
          MOV EDI, 0
          MOV EBX, 0 
          MOV EDX, OFFSET NUM_9
          CALL WRITESTRING
          CALL READINT
          MOV NUM_USUARIO, EAX
          
          CICLO:
            MOV EAX, 0
            MOV AL, ARREGLO_9[EDI]
            CMP  EBX, NUM_USUARIO
            Jl DETENER
            CONTINUAR:

            INC EDI
          LOOP CICLO

          JMP RESULTADO

          DETENER:
          ADD EBX, EAX
          CMP EBX, NUM_USUARIO
          JG DETENER_2
          JMP CONTINUAR

          DETENER_2:
          SUB EBX, EAX

          RESULTADO:
          MOV EAX, EBX
          MOV EDX, OFFSET SUMA_9
          CALL WRITESTRING
          CALL WRITEDEC
          CALL CRLF

          exit
     main27 ENDP
     END main27