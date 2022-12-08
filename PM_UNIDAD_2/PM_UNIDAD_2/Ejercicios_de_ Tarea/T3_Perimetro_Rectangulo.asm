;Integrantes:
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
INCLUDE Irvine32.inc
.data
; Área de Declaración de Variables
cbase1_11 db "Ingresa La Base: ",0
caltura2_11 db "Ingresa La Altura: ",0
cResultado_11 db "El Perimetro Del Rectangulo Es: ",0

.code
     main22 PROC
          ;Lógica del Programa

          mov edx, offset cbase1_11 

          call writeString 

          call crlf

          call readint

          add eax, eax

          mov ebx, eax

          call crlf

          mov edx, offset caltura2_11

          call writeString

          call crlf

          call readint

          add eax, eax

          call crlf

          mov edx, offset cResultado_11

          call writeString

          add eax, ebx

          call writeint

          call crlf


          exit
     main22 ENDP
     END main22