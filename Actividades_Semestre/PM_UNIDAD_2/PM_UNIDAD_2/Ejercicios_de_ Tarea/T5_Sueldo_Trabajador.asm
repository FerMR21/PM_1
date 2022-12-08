;Integrantes:
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
INCLUDE Irvine32.inc
.data
; Área de Declaración de Variables
csueldo1_13 db "Ingresa El Sueldo Del Trabajador: ",0
choras2_13 db "Ingresa Las Horas Que Labora: ",0
cResultado_13 db "El Sueldo Final es: ",0

.code
     main24 PROC
          ;Lógica del Programa

          mov edx, offset csueldo1_13

          call writeString 

          call crlf

          call readint

          mov ebx, eax

          call crlf

          mov edx, offset choras2_13

          call writeString

          call crlf

          call readint

          mul ebx

          call crlf

          mov edx, offset cResultado_13

          call writeString

          call writeint

          call crlf


          exit
     main24 ENDP
     END main24