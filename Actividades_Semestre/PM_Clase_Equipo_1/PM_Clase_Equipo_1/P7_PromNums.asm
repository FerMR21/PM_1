INCLUDE Irvine32.inc
.data
;Area de declaracion de variables
;Fernando Martinez Reyes
;Programación de microprocesadores
cal1_7 dword 7
cal2_7 dword 8
cal3_7 dword 8
cal4_7 dword 8
cal5_7 dword 9

;inmediato (inm)
;memoria (mem)
;registro (reg)

; prom = (c1+c2+c3+c4+c5)/5

.code
	main7 PROC
		;logica del Programa

		mov eax, cal1_7
		add eax, cal2_7   ;eax = c1+c2
		add eax, cal3_7   ;eax = c1+c2+c3
		add eax, cal4_7   ;eax = c1+c2+c3+c4
		add eax, cal5_7   ;eax = c1+c2....

		mov ebx, 5  ;divisor

		mov edx, 0 ;limppiar el registro que se usará como almacen del residuo

		div ebx   ;eax = cociente     edx = residuo 



		

		
		;CALL WRITEDEC  ; IMPRIME EN CONSOLA EL VALOR DE EAX
		CALL WRITEINT

		CALL CRLF ; SALTO DE LINEA


		exit
	main7 ENDP
	END main7