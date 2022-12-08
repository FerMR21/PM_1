;Integrantes:
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
INCLUDE Irvine32.inc
.data
Sueldo_2 dword 2500
Hora_2 dword 8
.code
     main10 PROC
          ;Multiplicación             
          MOV EAX, Hora_2
	      MUL Sueldo_2 
	      CALL WRITEINT
          exit
     main10 ENDP
     END main10