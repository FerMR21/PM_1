INCLUDE Irvine32.inc
;Integrantes Del Equipo
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
.data
; Área de Declaración de Variables
C_DIAS_21 DB "INGRESE LA CANTIDAD DE DIAS DE ESTANCIA", 0
C_H_21 DB "INGRESE EL COSTO DE ESTANCIA EN EL HOTEL", 0
P_HOTEL_21 DB "EL COSTO POR ESTANCIA EN EL HOTEL ES: ", 0
C_COMIDA_21 DB "INGRESE EL COSTO DE LA COMIDA ", 0
P_C_21 DB "EL COSTO DE LA COMIDA ES: ", 0
TOT_21 DB "TOTAL A PAGAR ES: ", 0
G_DIARIOS DB "EL TOTAL DE GASTOS DIARIOS ES: ", 0
AUX_21 DWORD 0

.code
     main20 PROC
          ;lógica del Programa

          MOV EDX, OFFSET C_DIAS_21
          CALL WRITESTRING
          CALL CRLF
          CALL READINT

          MOV EBX, EAX ; SE GUARDA EL VALOR DE LA CANTIDAD DE DIAS EN EBX
          MOV EDX, OFFSET C_H_21
          CALL WRITESTRING
          CALL CRLF
          CALL READINT

          MUL EBX

          ADD AUX_21, EAX ;EL RESULTADO DE LA MULTIPLICACION SE GUARDA EN LA VARIABLE AUX_21
          MOV EDX, OFFSET P_HOTEL_21
          CALL WRITESTRING
          CALL WRITEDEC
          CALL CRLF

          MOV EDX, OFFSET C_COMIDA_21
          CALL WRITESTRING
          CALL CRLF
          CALL READINT

          MUL EBX   ;SE MULTIPLICA EL RESULTADO ANTERIOR DE LA MULTIPLICACION POR EL COSTO DE LA COMIDA
          
          ADD AUX_21, EAX
          
          MOV EDX, OFFSET P_C_21
          CALL WRITESTRING
          CALL WRITEDEC
          CALL CRLF
          MOV EAX, 100
          MUL EBX
          ADD AUX_21, EAX

          MOV EDX, OFFSET G_DIARIOS
          CALL WRITESTRING
          CALL WRITEDEC
          CALL CRLF

          MOV EDX, OFFSET TOT_21
          CALL WRITESTRING
          MOV EAX, AUX_21
          CALL WRITEDEC
          CALL CRLF



          exit
     main20 ENDP
     END main20