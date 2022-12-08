INCLUDE Irvine32.inc
;Integrantes Del Equipo
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
.data
; Área de Declaración de Variables
NUMERO_11 DB "INGRESA UN NUMERO: ", 0
RESULTADO_SI_11 DB "EL NUMERO ES PRIMO ", 0
RESULTADO_NO_11 DB "EL NUMERO NO ES PRIMO", 0

CONTADOR_11 DWORD 0


.code
     main11 PROC
          ;lógica del Programa

          MOV EDX, OFFSET NUMERO_11
          CALL WRITESTRING
          CALL READINT ;NUMERO QUE SE VA CHECAR 
         
          MOV EBX, EAX ;AUXILIAR PARA LA DIVISION

          MOV ECX, EAX ;PARA DEFINIR LA CANTIDAD DE DIVIONES A REALIZAR
          DEC ECX

          CICLO:
                MOV EAX,EBX
                MOV EDX, 0
                DIV ECX ;EAX / ECX
                CMP EDX, 0 
                JNZ SALTA_A_LOOP
                

                INC CONTADOR_11

                SALTA_A_LOOP:
                    LOOP CICLO

         ;MOV EAX, CONTADOR_11
         ;CALL WRITEDEC

         CMP CONTADOR_11,1
         JNZ NO_ES_PRIMO
            MOV EDX, OFFSET RESULTADO_SI_11
            JMP CONTINUAR

         NO_ES_PRIMO:
                MOV EDX, OFFSET RESULTADO_NO_11

        CONTINUAR:
            CALL WRITESTRING


          exit
     main11 ENDP
     END main11