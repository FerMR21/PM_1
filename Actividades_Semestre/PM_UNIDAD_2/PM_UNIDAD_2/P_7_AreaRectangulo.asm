INCLUDE Irvine32.inc
;Integrantes Del Equipo
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
.data
; Área de Declaración de Variables
cbase_7 db "Ingresa la base: ", 0
cAltura_7 db "Ingresa la altura: ", 0
cresultado_7 db "El resultado es: ", 0
;USO DE REGISTROS
.code
     main7 PROC
          ;lógica del Programa


          MOV EDX, OFFSET CBASE_7
          CALL WRITESTRING
          CALL CRLF

          CALL READINT

          MOV EDX, OFFSET CALTURA_7
          CALL WRITESTRING
          CALL CRLF
          MOV ECX, EAX
          CALL READINT

          MOV EDX, OFFSET CRESULTADO_7
          CALL WRITESTRING
          CALL CRLF

          MUL ECX ;ALTURA * BASE

          CALL WRITEINT



          exit
     main7 ENDP
     END main7