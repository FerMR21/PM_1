INCLUDE Irvine32.inc
.data
;Area de declaracion de variables
;Fernando Martinez Reyes
;Programación de microprocesadores
valX_6 dword 5
valM_6 dword 10
valC_6 dword 3
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
	main6 PROC
		;logica del Programa
		

		mov eax, valM_6
		mul valX_6  ; eax = M * X

		add eax, valC_6
		;CALL WRITEDEC  ; IMPRIME EN CONSOLA EL VALOR DE EAX
		CALL WRITEINT

		CALL CRLF ; SALTO DE LINEA


		exit
	main6 ENDP
	END main6



	//documentar las 4 operaciones aritmeticas 
	nmotecnicos de suma, res, mul, div

	//proyecto de unidad ; ensayo 