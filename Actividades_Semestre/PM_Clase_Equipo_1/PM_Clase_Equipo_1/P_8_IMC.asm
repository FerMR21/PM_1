;Semestre: 8vo Semestre ISC
INCLUDE Irvine32.inc
.data
;Area de declaracion de variables
;Fernando Martinez Reyes
;Programación de microprocesadores

altura_8 dword 174   ; cm
peso_8 dword 6500     ; en gramos


; imc = peso / (altura*altura)


.code
	main8 PROC
		;logica del Programa
		
		mov eax, altura_8
		mul eax    ; altura * altura
		;mul altura_8

		mov edx, 0 ;para limpiar el registro

		mov ebx, eax  ; respaldo el valor de altura^2

		mov eax, peso_8

		div ebx ;

		;NUM 1 = 10 ////////////////////////// NUM2 = 15
		


	
		;CALL WRITEDEC  ; IMPRIME EN CONSOLA EL VALOR DE EAX
		CALL WRITEINT

		CALL CRLF ; SALTO DE LINEA


		exit
	main8 ENDP
	END main8
