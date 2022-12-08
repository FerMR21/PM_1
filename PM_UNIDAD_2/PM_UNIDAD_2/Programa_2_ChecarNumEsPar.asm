INCLUDE Irvine32.inc
;Integrantes Del Equipo
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
.data
; Área de Declaración de Variables

dividendo_2 dword 2 ;variable auxiliar dividendo
.code
     main3 PROC
          ;lógica del Programa

          ; checar si un numero es par

          MOV EAX, 15  ; EAX CONTIENE ES EL NUMERO SI ES PAR

          MOV EDX, 0   ; inicializza la variable con el valor 0

          DIV DIVIDENDO_2  ; EAX = COCIENTE EDX = RESIDUO

          CMP EDX,0  ; COMPARA EDX CON EL RESIDUO SI ES 0

          MOV EAX,1  ; se asigna el valor 1 si es par

          JNZ CAMBIA_VALOR_EAX ; CUANDO EL RESULTADO DE LA COMPARACIÓN ES DIFERENTE DE 0
                                ; ENTONCES SE SALTA A "CAMBIA_VALOR_EAX"
           
           JMP CONTINUAR    ; 

           CAMBIA_VALOR_EAX:
             MOV EAX, 0 



           CONTINUAR:

            CALL WRITEDEC
            CALL CRLF

        
          exit
     main3 ENDP
     END main3