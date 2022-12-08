;Integrantes:
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
INCLUDE Irvine32.inc
.data
; Área de Declaración de Variables
calif1_14 db "Ingresa La Primera Calificacion: ",0
calif2_14 db "Ingresa La Segunda Calificacion: ",0
calif3_14 db "Ingresa La Tercera Calificacion: ",0
calif4_14 db "Ingresa La Cuarta Calificacion: ",0
calif5_14 db "Ingresa La Quinta Calificacion: ",0
cResultado_14 db "La Nota Del Alumno Es: ",0

.code
     main25 PROC
          ;Lógica del Programa

          mov edx, offset calif1_14

          call writeString 

          call crlf

          call readint

          mov ebx, eax

          mov edx, offset calif2_14

          call writeString

          call crlf

          call readint

          add ebx, eax

          mov edx, offset calif3_14

          call writeString

          call crlf

          call readint

          add ebx, eax

          mov edx, offset calif4_14

          call writeString

          call crlf

          call readint

          add ebx, eax

          mov edx, offset calif5_14

          call writeString

          call crlf

          call readint

          add eax, ebx

          mov edx, 0

          mov ecx, 5

          div ecx

          mov edx, offset cResultado_14

          call writeString

          call writeint

          call crlf


          exit
     main25 ENDP
     END main25