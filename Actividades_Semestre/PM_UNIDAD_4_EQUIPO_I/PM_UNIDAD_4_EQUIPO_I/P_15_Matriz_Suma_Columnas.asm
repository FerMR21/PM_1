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
     main15 PROC
          ;lógica del Programa

          MOV ECX, 0
          

          CICLO:
            MOV EAX, ECX
            MUL COLUMNAS
            MOV ESI,EAX
            PUSH ECX
            MOV ECX, 0
            MOV EBX, 0 ;CONTADOR
            C_2:
                MOV EDI,ECX
                MOV EAX,0
                MOV AL,MATRIZ[ESI+EDI]
                ADD EBX,EAX
                INC ECX
                CMP ECX,COLUMNAS
                JL C_2
                ;SALE DEL CICLO
                MOV EAX, EBX
                CALL WRITEDEC
                CALL CRLF
                POP ECX
                INC ECX
                CMP ECX,FILAS
                JL CICLO
     

          exit
     main15 ENDP
     END main15