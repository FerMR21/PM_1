;Semestre: 8vo Semestre ISC
INCLUDE Irvine32.inc
.data
;Area de declaracion de variables
;Fernando Martinez Reyes
;Programación de microprocesadores
num1_2 dword 10
num2_2 dword 15
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
	main2 PROC
		;logica del Programa
		;add num1_2, num2_2 ;No se puede
		

		;NUM 1 = 10 ////////////////////////// NUM2 = 15
		;REG DE PROPOSITO GENERAL : EAX, EBX, ECX, EDX
		MOV EAX, num2_2

		;ADD DESTINO, ORIGEN    DESTINO = DESTINO + ORIGEN
		
		ADD NUM1_2, EAX ; El resultado se guarda en : NUM1_2
		MOV EAX, NUM1_2 ; PARA PODER IMPRIMIR EL VALOR DE EAX
		CALL WRITEDEC  ; IMPRIME EN CONSOLA EL VALOR DE EAX
		CALL CRLF ; SALTO DE LINEA

		ADD EAX, NUM1_2 ; EL RESULTADO SE GUARDA EN : EAX

		CALL WRITEDEC  ; IMPRIME EN CONSOLA EL VALOR DE EAX
		CALL CRLF ; SALTO DE LINEA


		

		

		exit
	main2 ENDP
	END main2
