       IDENTIFICATION DIVISION.
       PROGRAM-ID. PGEXE004.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-DATA             PIC X(10) VALUE SPACES.
       01 WS-DATA-R    REDEFINES   WS-DATA.
          03 WS-DATA-DD       PIC 9(02).
          03 FILLER           PIC X.
          03 WS-DATA-MM       PIC 9(02).
          03 FILLER           PIC X.
          03 WS-DATA-AA       PIC 9(04).
       77 WS-NOME-MES-AUX     PIC X(15) VALUE SPACES.
       77 WS-TECLA-AUX        PIC X.

       PROCEDURE DIVISION.
     
       P100-INICIAL.
            DISPLAY 'INICIO DO PROCESSAMENTO'.

            MOVE SPACES       TO WS-DATA
                                 WS-NOME-MES-AUX
                                 WS-TECLA-AUX.

            DISPLAY  'INFORME UMA DATA: '.
            ACCEPT   WS-DATA.

            PERFORM  P200-VER-MES    THRU P200-VER-MES-FIM.
            PERFORM  P300-MOSTRA     THRU P300-MOSTRA-FIM.
            PERFORM  P900-TERMINAL   THRU P900-TERMINAL-FIM.
       P100-INICIAL-FIM.

       P200-VER-MES.
            DISPLAY 'VERIFICANDO O MES DA DATA INFORMADA...'

            EVALUATE WS-DATA-MM
                WHEN 01
                   MOVE 'JANEIRO'    TO WS-NOME-MES-AUX
                WHEN 02
                   MOVE 'FEVEREIRO'  TO WS-NOME-MES-AUX
                WHEN 03
                   MOVE 'MARCO'      TO WS-NOME-MES-AUX
                WHEN 04
                   MOVE 'ABRIL'      TO WS-NOME-MES-AUX
                WHEN 05
                   MOVE 'MAIO'       TO WS-NOME-MES-AUX
                WHEN 06
                   MOVE 'JUNHO'      TO WS-NOME-MES-AUX  
                WHEN 07
                   MOVE 'JULHO'      TO WS-NOME-MES-AUX
                WHEN 08
                   MOVE 'AGOSTO'     TO WS-NOME-MES-AUX
                WHEN 09
                   MOVE 'SETEMBRO'   TO WS-NOME-MES-AUX
                WHEN 10
                   MOVE 'OUTUBRO'    TO WS-NOME-MES-AUX
                WHEN 11
                   MOVE 'NOVEMBRO'   TO WS-NOME-MES-AUX 
                WHEN 12
                   MOVE 'DEZEMBRO'   TO WS-NOME-MES-AUX
            END-EVALUATE.
       P200-VER-MES-FIM.


       P300-MOSTRA.
            DISPLAY "EXIBINDO O RESULTADO DO PROCESSAMENTO".

            DISPLAY "O MES DA DATA INFORMADA EH: " WS-NOME-MES-AUX.

            DISPLAY "TECLE <C> PARA CONTINUAR OU <T> PARA TERMINAR".

            ACCEPT WS-TECLA-AUX.

            IF WS-TECLA-AUX = "C" THEN
               PERFORM P100-INICIAL         THRU P100-INICIAL-FIM
            END-IF.
       P300-MOSTRA-FIM.
     
       
       P900-TERMINAL.
           STOP RUN.
       P900-TERMINAL-FIM.
       END PROGRAM PGEXE004.

