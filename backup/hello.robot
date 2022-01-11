*** Settings ***
Library        hello.py

*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${resultado}=        Hello Robot         Luiz Henrique
    Should Be Equal      ${resultado}        Olá, Luiz Henrique.


