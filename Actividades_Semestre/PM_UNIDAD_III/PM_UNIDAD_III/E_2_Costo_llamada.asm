INCLUDE Irvine32.inc
;Integrantes Del Equipo
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
.data
; Área de Declaración de Variables

t_llamada_21 db "Cual es el tiempo de la llamada: ", 0
c_min_21 db "Cual es el costo por minuto: ", 0
costo_21 db "El importe total a pagar es: ", 0


.code
     main22 PROC
          ;lógica del Programa

          ;Se requiere un algoritmo para determinar el costo que tendrá una llamada telefónnica
          ;con base en el tiempo que dura la llamada y en el costo por minuto

          MOV EDX, OFFSET T_LLAMADA_21
          CALL WRITESTRING
          CALL CRLF
          CALL READINT ;SE LEE LA DISTANCIA
          MOV EBX, EAX ;SE RESPALDA EN EBX


          MOV EDX, OFFSET C_MIN_21
          CALL WRITESTRING
          CALL CRLF
          CALL READINT ;LEE EL PRECIO
          MUL EBX   ;EAX = EAX * EBX DISTANCIA * PRECIO

          MOV EDX, OFFSET COSTO_21
          CALL WRITESTRING
          CALL CRLF


          CALL WRITEDEC
          CALL CRLF
          exit
     main22 ENDP
     END main22