INCLUDE Irvine32.inc
;Integrantes Del Equipo
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
.data
; Área de Declaración de Variables
NUM_23 DB "INGRESE EL NUMERO BUSCADO: ", 0
RES_23 DB "LAS VECES QUE SE REPITE EL NUMERO SON: ",0
ARREGLO BYTE 1,2,3,4,5,5,6,7,8,9
AUX DWORD 0
CONTADOR DWORD 0

.code
     main23 PROC
          ;lógica del Programa
          ;dado un arreglo de valores ya definidos y un valor ingresado por el usuario
          ;imprimir el numero de veces que aparece el valor en el arreglo

          MOV ECX, SIZEOF ARREGLO
          MOV EDI, 0
          MOV EDX, OFFSET NUM_23
          CALL WRITESTRING
          CALL CRLF
          CALL READINT
          CALL CRLF

          MOV AUX, EAX

          CICLO:
            MOV EAX, 0
            MOV AL, ARREGLO[EDI]

            CMP AUX, EAX
            
            JE REPETIDO

            CONTINUAR:


            INC EDI
            LOOP CICLO
            

            JMP RESULTADO

            REPETIDO:
                ADD CONTADOR, 1
                JMP CONTINUAR

            RESULTADO:
                MOV EDX, OFFSET RES_23
                CALL WRITESTRING
                CALL CRLF
                MOV EAX, CONTADOR
                CALL WRITEDEC
                CALL CRLF
                


          exit
     main23 ENDP
     END main23