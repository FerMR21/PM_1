INCLUDE Irvine32.inc
;Integrantes Del Equipo
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
.data
; �rea de Declaraci�n de Variables

m_distancia_5 db "Cual es la distancia recorrida", 0
m_precio_5 db "Cual es el precio por kilometro", 0
m_costo_5 db "El importe total a pagar es: ", 0


.code
     main5 PROC
          ;l�gica del Programa

          ;La compania de autobuses -la curva loca- requiere determinar el costo que tendr�
          ;un viaje sencillo esto basado en los kilometros por recorrer y el costo por kilometro

          MOV EDX, OFFSET M_DISTANCIA_5
          CALL WRITESTRING
          CALL CRLF
          CALL READINT ;SE LEE LA DISTANCIA
          MOV EBX, EAX ;SE RESPALDA EN EBX


          MOV EDX, OFFSET M_PRECIO_5
          CALL WRITESTRING
          CALL CRLF
          CALL READINT ;LEE EL PRECIO
          MUL EBX   ;EAX = EAX * EBX DISTANCIA * PRECIO

          MOV EDX, OFFSET M_COSTO_5
          CALL WRITESTRING
          CALL CRLF


          CALL WRITEDEC
          CALL CRLF
          exit
     main5 ENDP
     END main5