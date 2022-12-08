;Integrantes:
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
;Semestre: 8vo Semestre ISC
INCLUDE Irvine32.inc
.data
;Area de declaracion de variables

X_1 dword 10
X_2 dword 5
Y_1 dword 20
Y_2 dword 8
F_1 dword 2

.code
	main11 PROC
;SUMA DE LOS VECTORES
MOV EAX, X_2
ADD X_1,EAX
MOV EAX, X_1
;DIVISON
MOV EDX, 0 
DIV F_1
CALL WRITEINT


	CALL CRLF

;SUMA DE LOS VECTORES
MOV EAX, Y_2
ADD Y_1,EAX
MOV EAX, Y_1
;DIVISON
MOV EDX, 0 
DIV F_1
CALL WRITEINT

CALL CRLF


	exit
main11 ENDP
END main11
