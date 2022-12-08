INCLUDE Irvine32.inc
;Integrantes Del Equipo
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
.data
cNumero1_6 db "Ingresa Numero 1: ", 0
cNumero2_6 db "Ingresa Numero 2: ", 0
cNumero3_6 db "Ingresa Numero 3: ", 0

cRESULTADO_6 db "Resultado: ", 0

;A PARTIR DE AHORA...
;SIEMPRE QUE SE PUEDA SE DEBE PRIORIZAR EL USO DE REGISTROS
aux dword 0 
; Área de Declaración de Variables
.code
     main6 PROC
          ;lógica del Programa

          MOV EDX, OFFSET CNUMERO1_6
          CALL WRITESTRING
          CALL CRLF
          CALL READINT  ;LEER NUMERO 1, SE ALMACENA EN EAX
          MOV ECX, EAX;RESPALDAR EL VALOR DE EAX PARA EVITAR QUE SE PIERDA
          ;REGISTROS DE PROPOSITO GENERAL, EAX,EBX,ECX,EDX

          MOV EDX, OFFSET CNUMERO2_6
          CALL WRITESTRING
          CALL CRLF
          CALL READINT  ;LEER NUMERO 2, SE ALMACENA EN EAX
          ADD ECX, EAX ;SUMA EL VALOR DE EAX CON EL DE ECX Y ALMACENA EL RESULTADO EN ECX

          MOV EDX, OFFSET CNUMERO3_6
          CALL WRITESTRING
          CALL CRLF
          CALL READINT ;LEE EL VALOR 3 Y SE ALMACENA EN EAX
          ADD EAX, ECX ;SE SUMA EL VALOR DE ECX CON EAX Y SE ALMACENA EN EAX
                       ;ES PREFERIBLE ALMACENARLO EN EAX PARA FACILITAR LA DIVISION ADEMAS DE QUE YA NO 
                       ;SE HARAN MAS SUMAS

          MOV EBX, 3
          MOV EDX, 0 ;PARA LIMPIAR EL REGISTRO
          DIV EBX ;EAX / EBX COCIENTE = EAX  RESIDUIO = EDX

          MOV EDX, OFFSET CRESULTADO_6
          CALL WRITESTRING
          CALL WRITEINT
          CALL CRLF
          CALL CRLF

          exit
     main6 ENDP
     END main6