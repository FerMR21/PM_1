INCLUDE Irvine32.inc
;Integrantes Del Equipo
;Martinez Reyes Fernando
.data
; Área de Declaración de Variables

NUM_24 DB "INGRESE UN NUMERO", 0
M_24 DB "EL NUMERO MAYOR ES: ", 0

.code
     main24 PROC
          ;lógica del Programa

          ;SE REQUIERE DETERMINAR CUAL DE TRES CANTIDADES PROPORCIONADAS ES LA MAYOR

          MOV EDX, OFFSET NUM_24
          CALL WRITESTRING
          CALL CRLF
          CALL READINT
          MOV ECX, EAX

          MOV EDX, OFFSET NUM_24
          CALL WRITESTRING
          CALL CRLF
          CALL READINT
          MOV EBX, EAX

          MOV EDX, OFFSET NUM_24
          CALL WRITESTRING
          CALL CRLF
          CALL READINT

          CMP ECX, EBX

            JG MAYOR_24

            JL MENOR_24
              

            MAYOR_24:
            CMP EBX, EAX
            JG FINAL_24
            JL MENOR_24

            MENOR_24:
            CMP EAX, ECX
                
            JG CONTINUAR_24
            
            JL SALIR_24

            CONTINUAR_24:
           
           MOV EDX, OFFSET M_24  
           
           CALL WRITESTRING
           CALL WRITEDEC
           JMP EXIT_24

           FINAL_24:
           MOV EAX, ECX
           MOV EDX, OFFSET M_24
           CALL WRITESTRING
           CALL WRITEDEC
           JMP EXIT_24

           SALIR_24:
           MOV EAX, EBX
           MOV EDX, OFFSET M_24 
           CALL WRITESTRING
           CALL WRITEDEC

           EXIT_24:
           CALL CRLF
          
          exit
     main24 ENDP
     END main24
              