INCLUDE Irvine32.inc
;Integrantes Del Equipo
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
.data
; Área de Declaración de Variables

NOMBRE_4 DB "INGRESE SU NOMBRE: ",0
NOM_4 DB 10 DUP("A")
SOL_NUM_4 DB "INGREAS UN NUMERO:  ", 0
ADIVINAR_4 DB "FELICIDADES HAS ADIVINADO: ",0
FRACASO_4 DB "LO SENTIMOS HAS FRACASADO", 0
INTENT_4 DWORD 3


.code
     main4 PROC
          ;lógica del Programa

          ;GENERAR UN NUMERO ALEATORIO
          ;PEDIR AL USUARIO SU NOMBRE
          ;SOLICITAR AL USUARIO QUE INTENTE ADIVINAR EL NUM 3 VECES
          ;SI LO ADIVINA SE IMPRIMIRÁ QUE LO ADIVINÓ SEGUIDO DE SU NOMBRE
          ;SI NO SE IMPRIMIRÁ QUE EL JUGADOR A FRACASADO

          CALL RANDOMIZE

          MOV EAX, 11 ; N = 11

          CALL RANDOMRANGE ; EAX

          CALL CRLF
          CALL WRITEDEC
          CALL CRLF
          MOV EBX, EAX ; GUARDAR EL VALOR ALEATORIO CREADO EN EBX
          
          MOV EDX, OFFSET NOMBRE_4
          CALL WRITESTRING
          CALL CRLF

          MOV ECX, 10
          MOV EDX, OFFSET NOM_4
          CALL READSTRING

          MOV ECX, INTENT_4

          

          CICLO: 
                MOV EDX, OFFSET SOL_NUM_4
                CALL WRITESTRING
                CALL CRLF
                CALL READINT
                CALL CRLF
                CMP EAX, EBX

                JE ADIVINADO

                LOOP CICLO

            JMP FALLASTE

         ADIVINADO:
                MOV EDX, OFFSET ADIVINAR_4
                CALL WRITESTRING
                MOV EDX, OFFSET NOM_4


         JMP SALIR

         FALLASTE:
                MOV EDX, OFFSET FRACASO_4

         SALIR:
            CALL WRITESTRING
            CALL CRLF

          exit
     main4 ENDP
     END main4