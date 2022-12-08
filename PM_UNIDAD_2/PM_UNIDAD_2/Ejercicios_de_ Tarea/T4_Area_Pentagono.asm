;Integrantes:
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
INCLUDE Irvine32.inc
.data
; Área de Declaración de Variables
cperimetro1_12 db "Ingresa El Perimetro: ",0
capotema2_12 db "Ingresa La Apotema: ",0
cResultado_12 db "El Area del Pentagono Es:: ",0

.code
     main23 PROC
          ;Lógica del Programa

          mov edx, offset cperimetro1_12

          call writeString 

          call crlf

          call readint

          mov ebx, eax

          call crlf

          mov edx, offset capotema2_12

          call writeString

          call crlf

          call readint

          mul ebx

          mov edx, 0

          mov ecx, 2

          div ecx

          call crlf

          mov edx, offset cResultado_12

          call writeString

          call writeint

          call crlf


          exit
     main23 ENDP
     END main23