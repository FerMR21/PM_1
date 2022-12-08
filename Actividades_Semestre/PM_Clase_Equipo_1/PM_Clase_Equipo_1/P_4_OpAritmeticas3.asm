;Semestre: 8vo Semestre ISC
INCLUDE Irvine32.inc
.data
;Area de declaracion de variables
;Fernando Martinez Reyes
;Programación de microprocesadores
num1_4 dword 10
num2_4 dword 15
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
	main4 PROC
		;logica del Programa
		;mul origen ;eax = eax * origen
		;origen puede ser un registro o memoria pero no puede ser inmediato

		;NUM 1 = 10 ////////////////////////// NUM2 = 15
		MOV EAX, num2_4


		mul num1_4  ;eax = eax * num1_4
		;CALL WRITEDEC  ; IMPRIME EN CONSOLA EL VALOR DE EAX
		CALL WRITEINT

		CALL CRLF ; SALTO DE LINEA


		exit
	main4 ENDP
	END main4
