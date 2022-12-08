INCLUDE Irvine32.inc
;Integrantes Del Equipo
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
.data
; Área de Declaración de Variables

precio_23 db "Ingrese el precio por hora: ", 0
tiempo_23 db "Ingrese las horas de estancia: ", 0
costo_23 db "El importe total a pagar es: ", 0


.code
     main23 PROC
          ;lógica del Programa

          MOV EDX, OFFSET PRECIO_23
          CALL WRITESTRING
          CALL CRLF
          CALL READINT ;SE LEE LA DISTANCIA
          MOV EBX, EAX ;SE RESPALDA EN EBX


          MOV EDX, OFFSET TIEMPO_23
          CALL WRITESTRING
          CALL CRLF
          CALL READINT ;LEE EL PRECIO
          MUL EBX   ;EAX = EAX * EBX DISTANCIA * PRECIO

          MOV EDX, OFFSET COSTO_23
          CALL WRITESTRING
          CALL CRLF


          CALL WRITEDEC
          CALL CRLF
          exit
     main23 ENDP
     END main23