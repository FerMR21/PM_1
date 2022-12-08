INCLUDE Irvine32.inc
;Integrantes Del Equipo
;Gonzalez Saldivar Luis Roberto
;Martinez Reyes Fernando
.data
; Área de Declaración de Variables

m_mensaje byte "Linea 1", 0dh,0dh
          byte "Linea 2",0dh,0dh
          byte "Linea 3", 0    
m_titulo db "Titulo del mensaje emergente", 0
.code
     main8 PROC
          ;lógica del Programa

          MOV EDX, OFFSET M_MENSAJE
          MOV EBX, OFFSET M_TITULO
          CALL MSGBOX
     

          exit
     main8 ENDP
     END main8