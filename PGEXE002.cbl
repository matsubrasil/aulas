       IDENTIFICATION DIVISION.
       PROGRAM-ID. PGEXE002.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-NUMERO-1          PIC 9(003) VALUE ZEROS.
       01 WS-NUMERO-2          PIC 9(003) VALUE ZEROS.
       01 WS-RESULTADO         PIC 9(004) VALUE ZEROS.
       01 WS-COMPARA           PIC Z(004) VALUE ZEROS.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY  'MOSTRA O RESULTADO DA SOMA DE 2 NUMEROS ALEATORIOS'.
           DISPLAY  'DIGITE O PRIMEIRO NUMERO: '
           
           ACCEPT   WS-NUMERO-1
           
           DISPLAY  'DIGITE O SEGUNDO NUMERO: '
           
           ACCEPT   WS-NUMERO-2
           
           COMPUTE  WS-RESULTADO = WS-NUMERO-1 + WS-NUMERO-2
           
           DISPLAY  'O RESULTADO EH: ' WS-RESULTADO
           
           MOVE 10 TO WS-COMPARA
           DISPLAY  'O VALOR DE WS-COMPARA EH: ' WS-COMPARA

           IF WS-RESULTADO > 10 THEN
               DISPLAY 'VERDADEIRO , ' WS-RESULTADO ' EH MAIOR QUE 10'
           ELSE
               DISPLAY 'FALSO, ' WS-RESULTADO ' EH MENOR OU IGUAL A 10'
           END-IF.

           STOP RUN.
       END PROGRAM PGEXE002.


