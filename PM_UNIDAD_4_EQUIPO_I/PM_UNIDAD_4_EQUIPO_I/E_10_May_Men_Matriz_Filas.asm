INCLUDE Irvine32.inc
;INTEGRANTES DEL EQUIPO
;Martinez Reyes Fernando
.data

matriz BYTE 5, 10, 15
          BYTE 7, 8, 9
          BYTE 3, 6, 11

FILAS DWORD 3
COLUMNAS DWORD 3
MIN DWORD 0
MAY DWORD  0
RMIN DB "EL VALOR MAXIMO DEL ARREGLO ES: ", 0
RMAY DB " EL VALOR MININMO DEL ARREGLO ES: ", 0
NFILA DB " DE LA FILA ", 0
R DB " ES: ", 0
; Área de Declaración de Variables
.code
     main30 PROC
          ;lógica del Programa
            ;POR FILA, ENCONTRAR EL VALOR MAYOR Y EL MENOR

          MOV ECX, 0
          MOV ESI, ECX
          MOV EDI, ECX
          MOV EAX, 0
          MOV AL, MATRIZ[ESI + EDI]
          CICLO:
               MOV EAX, ECX
               MUL COLUMNAS
               MOV ESI, EAX
               PUSH ECX
               MOV ECX, 0
               CICLO2:
                    MOV EDI, ECX
                    MOV EAX, 0
                    MOV AL, MATRIZ[ESI + EDI]
                    CMP ECX,0
                    JE RESET
                    CONTINUAR:
                    CMP EAX, MAY
                    JG MAY_30
                    CMP EAX, MIN
                    JL MIN_30
                    CONTINUAR2:
                    INC ECX
                    CMP ECX, COLUMNAS
                    JL CICLO2

                    MOV EDX, OFFSET RMAY
                    CALL WRITESTRING
                    MOV EDX, OFFSET NFILA
                    CALL WRITESTRING
                    POP EAX
                    INC EAX
                    CALL WRITEDEC
                    DEC EAX
                    PUSH EAX
                    MOV EDX, OFFSET R
                    CALL WRITESTRING
                    MOV EAX, MAY
                    CALL WRITEDEC
                    CALL CRLF
                    MOV EDX, OFFSET RMIN
                    CALL WRITESTRING
                    MOV EDX, OFFSET NFILA
                    CALL WRITESTRING
                    POP EAX
                    INC EAX
                    CALL WRITEDEC
                    DEC EAX
                    PUSH EAX
                    MOV EDX, OFFSET R
                    CALL WRITESTRING
                    MOV EAX, MIN
                    CALL WRITEDEC
                    CALL CRLF
                    POP ECX
                    INC ECX
                    CMP ECX, FILAS
                    JL CICLO
                    JMP RES

                    MAY_30:
                    MOV MAY, EAX
                    JMP CONTINUAR2
                    MIN_30:
                    MOV MIN, EAX 
                    JMP CONTINUAR2
                    RESET:
                    MOV MAY, EAX
                    MOV MIN, EAX
                    JMP CONTINUAR
 
                  RES:
 
            exit
    main30 ENDP
    END main30