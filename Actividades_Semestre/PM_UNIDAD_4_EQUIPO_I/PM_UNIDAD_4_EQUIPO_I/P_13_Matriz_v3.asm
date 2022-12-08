INCLUDE Irvine32.inc
;Integrantes Del Equipo
;Martinez Reyes Fernando
.data
; Área de Declaración de Variables
matriz byte 5,6,8,10
        byte 12,15,9,7
        byte 13,16,4,3
TAM_13 DWORD ?
EMPT_13 DB " ",0
.code
     main13 PROC
          ;lógica del Programa
          MOV ECX,0
          MOV TAM_13, 4

        CICLO:
            MOV EAX, ECX
            MUL TAM_13
            MOV EDI, EAX
            PUSH ECX
            MOV ECX,0

        C_2:
            MOV ESI, ECX
            MOV EAX,0
            MOV AL, MATRIZ[EDI+ESI]
            CALL WRITEDEC
            MOV EDX, OFFSET EMPT_13
            CALL WRITESTRING
            INC ECX
            CMP ECX, TAM_13
            
         JL C_2

            CALL CRLF
            POP ECX
            ADD ECX,2
            CMP ECX, 3

            JG  SALIR

                LOOP CICLO

            SALIR:
  
          exit
     main13 ENDP
     END main13