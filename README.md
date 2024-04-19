# APRENDENDO COBOL

Fonte: https://www.youtube.com/watch?v=1fCX4MjAiCI&t=2223s

# instalar GNU COBOL no WSL

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install gnucobol

# compilar arquivo

> zsh do vscode
> cobc -x -free PGEXE001.cbl

# Executar

> bash
> exec PGEXE001

# Se necessitar que o valor de um número venha com VÍRGULA, precisa indicar no ENVIRONMENT DIVISION

```cobol

       IDENTIFICATION DIVISION.
       PROGRAM-ID. PGEXE003.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
       DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
```
