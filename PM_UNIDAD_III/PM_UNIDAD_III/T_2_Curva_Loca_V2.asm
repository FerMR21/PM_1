INCLUDE Irvine32.inc
;Integrantes Del Equipo
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
.data
; Área de Declaración de Variables

m_distancia_5 db "Cual es la distancia recorrida", 0
m_precio_5 db "Cual es el precio por kilometro", 0
nombre_5 DB "Ingrese su nombre", 0
m_costo_5 db "El importe total a pagar es: ", 0


.code
     main5 PROC
          ;lógica del Programa

          ;La compania de autobuses -la curva loca- requiere determinar el costo que tendrá
          ;un viaje sencillo esto basado en los kilometros por recorrer y el costo por kilometro

          MOV EDX, OFFSET M_DISTANCIA_5
          CALL WRITESTRING
          CALL CRLF
          CALL READINT ;SE LEE LA DISTANCIA
          MOV EBX, EAX ;SE RESPALDA EN EBX

          CALL RANDOMIZE

          MOV EAX, 10

          CALL RANDOMRANGE
          CALL WRITEDEC  ;MUESTRA EL NUM RANDOM
          MUL EBX

          MOV M_COSTO_5, EAX

          MOV EDX, OFFSET NOMBRE_5
          CALL WRITESTRING
          CALL CRLF
          MOV ECX, 5

          CALL READSTRING 
          CALL CRLF
          CALL WRITESTRING
          MOV EAX, M_COSTO_5
          CALL WRITEDEC
          CALL CRLF

          exit
     main5 ENDP
     END main5