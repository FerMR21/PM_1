INCLUDE Irvine32.inc
;Integrantes Del Equipo
;Martinez Reyes Fernando
.data
; Área de Declaración de Variables

m_cantidad_6 db "Ingrese la cantidad de lapices: ", 0
m_costo_6 db "El importe a pagar es de: ", 0


.code
     main6 PROC
          ;lógica del Programa
          ;determinar cuanto se debe pagar por x cantidad de lapices considerando que si son
          ;mas de 1000 o mas el costo es de 10 pesos por lapiz,
          ;de lo contrario vale  15

          MOV EDX, OFFSET M_CANTIDAD_6
          CALL WRITESTRING
          CALL CRLF
          CALL READINT ;CANTIDAD DE LAPICES A COMPRAR
          
          CMP EAX, 1000

          JGE MAYOR

          MOV EDX, 15

          JMP CONTINUAR

          MAYOR:
          MOV EDX, 10

          CONTINUAR:
          MUL EDX

          MOV EDX, OFFSET M_COSTO_6
          CALL WRITESTRING
          CALL CRLF
          CALL WRITEDEC



          exit
     main6 ENDP
     END main6