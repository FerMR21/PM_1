;Semestre: 8vo Semestre ISC
INCLUDE Irvine32.inc
.data
;Area de declaracion de variables
;Fernando Martinez Reyes
;Programación de microprocesadores
num1_3 dword 10
num2_3 dword 15
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
	main3 PROC
		;logica del Programa
		;sub num1_3, num2_3 ;No se puede
		

		;NUM 1 = 10 ////////////////////////// NUM2 = 15
		;REG DE PROPOSITO GENERAL : EAX, EBX, ECX, EDX
		MOV EAX, num2_3

		;SUB DESTINO, ORIGEN    
		;DESTINO = DESTINO - ORIGEN?
		;DESTINO = ORIGEN - DESTINO?
		

		;10, 15
		SUB NUM1_3, EAX ; El resultado se guarda en : NUM1_2
		MOV EAX, NUM1_3 ; PARA PODER IMPRIMIR EL VALOR DE EAX
		;CALL WRITEDEC  ; IMPRIME EN CONSOLA EL VALOR DE EAX
		CALL WRITEINT
		CALL CRLF ; SALTO DE LINEA


		exit
	main3 ENDP
	END main3
