INCLUDE Irvine32.inc
;Integrantes Del Equipo
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
.data
; Área de Declaración de Variables

INGRESA_A_1 DB "INGRESA EL VALOR DE A: ", 0
INGRESA_B_1 DB "INGRESA EL VALOR DE B", 0
INGRESA_c_1 DB "INGRESA EL VALOR DE C", 0
AREA_TOT_1 DB "EL AREA TOTAL DEL TERRONO ES: ", 0
AREA_TRIANGULO_1 DWORD 0
C_1 DWORD 0
.code
     main PROC
          ;lógica del Programa

          MOV EDX, OFFSET INGRESA_A_1
          CALL WRITESTRING
          CALL CRLF
          CALL READINT

          MOV EBX, EAX

          MOV EDX, OFFSET INGRESA_B_1
          CALL WRITESTRING
          CALL CRLF
          CALL READINT

          MOV ECX, EAX
          MOV EDX, OFFSET INGRESA_C_1
          CALL WRITESTRING
          CALL CRLF
          CALL READINT

          MOV C_1, EAX
          MOV AREA_TRIANGULO_1, ECX
          SUB EBX, C_1
          MOV EAX, EBX
          MUL ECX
          MOV EBX, 2
          MOV ECX, 0
          DIV EBX

          MOV EBX, AREA_TRIANGULO_1 ;B SE ENCUENTRA EN EBX

          MOV AREA_TRIANGULO_1, EAX

          MOV EAX, EBX ;SE MUEVE EL VALOR A EAX EL VALOR DE B GUARDADO EN EBX PARA MULTIPLICARLO
          MUL C_1
          ADD EAX, AREA_TRIANGULO_1
          MOV EDX, OFFSET AREA_TOT_1
          CALL WRITESTRING
          CALL WRITEDEC
          CALL CRLF



          exit
     main ENDP
     END main