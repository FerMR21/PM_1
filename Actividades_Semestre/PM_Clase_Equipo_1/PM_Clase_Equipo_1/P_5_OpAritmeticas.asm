INCLUDE Irvine32.inc
.data
;Area de declaracion de variables
;Fernando Martinez Reyes
;Programación de microprocesadores
num1_5 dword 6
num2_5 dword 15
;inmediato (inm)
;memoria (mem)
;registro (reg)

;de a 
;mem a inm X
;inm a mem SI
;inm a inm X
;mem a mem X
;inm a reg SI
;mem a reg SI
;reg a mem SI
;reg a reg SI

.code
	main5 PROC
		;logica del Programa
		;div origen ;eax = eax / origen
		;origen puede ser un registro o memoria pero no puede ser inmediato

		; eax = cociente(resultado)
		;edx = residuo

		;NOTA: se debe tener cuidado que el red edx
		;no tenga informacion importante y que ademas se garantize
		;que no haya sobreflujo
		;se recomienda antes de dividir: edx = 0

		;NUM 1 = 3 ////////////////////////// NUM2 = 15
		MOV EAX, num2_5

		;MOV EAX, num2_5 Ejemplo 2

		mov edx, 0   ;edx = 0

		div num1_5  ;eax = eax / num1_5

		;div num1_5  ;eax = eax / num1_5 ejemplo 2
		;CALL WRITEDEC  ; IMPRIME EN CONSOLA EL VALOR DE EAX
		CALL WRITEINT

		CALL CRLF ; SALTO DE LINEA


		exit
	main5 ENDP
	END main5



	//documentar las 4 operaciones aritmeticas 
	nmotecnicos de suma, res, mul, div

	//proyecto de unidad ; ensayo 