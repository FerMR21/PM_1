;Integrantes:
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
INCLUDE Irvine32.inc
.data
; Área de Declaración de Variables
x_16 db "Ingresa El Valor De X: ",0
y_16 db "Ingresa El Valor De Y: ",0
z_16 db "Ingresa El Valor De Z: ",0
cResultado1_16 db "El numero mayor es,0


.code
     main27 PROC
          ;Lógica del Programa

          mov edx, offset x_16

          call writeString 

          call crlf

          call readint

          mov ebx, eax

          mov edx, offset y_16

          call writeString

          call crlf

          call readint

          add ebx, eax

          mov edx, offset z_16

          call writeString

          call crlf

          call readint

          CMP EBX, EAX

          JG Mayor_16

          JE Igual_16

          JL Menor_16

          Menor_16:

          mov edx, offset cResultado2_16

          JMP Imprimir_16

          Igual_16:

          mov edx, offset cResultado3_16

          JMP Imprimir_16

          Mayor_16:

          mov edx, offset cResultado1_16

          Imprimir_16:

          call writeString

          call crlf
          exit
     main27 ENDP
     END main27