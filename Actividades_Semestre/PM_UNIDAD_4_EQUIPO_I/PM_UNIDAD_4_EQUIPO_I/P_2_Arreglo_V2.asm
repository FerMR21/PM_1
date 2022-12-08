INCLUDE Irvine32.inc
;Integrantes Del Equipo
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
.data
; Área de Declaración de Variables
arreglo byte 10,12,14,15

.code
     main2 PROC
          ;lógica del Programa

          mov edi, 0
          mov eax, 0
          mov al, arreglo[edi]
          call writedec
          call crlf

          inc edi
          mov al, arreglo[edi]
          call writedec
          call crlf

     

          exit
     main2 ENDP
     END main2