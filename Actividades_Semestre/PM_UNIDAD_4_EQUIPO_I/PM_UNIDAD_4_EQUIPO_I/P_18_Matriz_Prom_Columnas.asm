INCLUDE Irvine32.inc
;Integrantes Del Equipo
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
.data
; Área de Declaración de Variables

matriz byte 5,10,15
        byte 7,8,9
        byte 3,6,11

FILAS DWORD 3
COLUMNAS DWORD 3

.code
     main18 PROC
          ;lógica del Programa

          MOV ECX, 0
          

          CICLO:
            MOV ESI,ECX
            PUSH ECX
            MOV ECX, 0
            MOV EBX, 0 ;CONTADOR
            C_2:
                MOV EAX,ECX
                MUL COLUMNAS
                MOV EDI,EAX
                MOV EAX,0
                MOV AL,MATRIZ[ESI+EDI]
                ADD EBX,EAX
                INC ECX
                CMP ECX, FILAS
                JL C_2
                ;SALE DEL CICLO
                MOV EAX, EBX
                MOV EDX, 0
                DIV FILAS
                CALL WRITEDEC
                CALL CRLF
                POP ECX
                INC ECX
                CMP ECX,COLUMNAS
                JL CICLO
     

          exit
     main18 ENDP
     END main18