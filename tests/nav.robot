*** Settings ***

Resource             ../resources/base.robot

Test Setup           Open Session
Test Teardown        Close Session

*** Variables ***
${NOME}     Luiz Henrique     #VARIAVEL SIMPLES
@{CARROS}   Civic    Lancer    Chevette    Brasilia    #VARIAVEL DE LISTAS
&{CARRO}    nome=Lancer    modelo=Evolution    ano=2020    #VARIAVEL DE OBJETO OU DICIONARIO

${ToolbarTitle}                      id=io.qaninja.android.twp:id/toolbarTitle

*** Test Cases ***
Deve acessar a tela Dialogs

    Get Started
    Open Nav

    Click Text                       DIALOGS
    Wait Until Element Is Visible    ${ToolbarTitle}                                     10
    Element Text Should Be           ${ToolbarTitle}             DIALOGS             DIALOGS


Deve acessar a tela Formulario
    Get Started
    Open Nav

    Click Text                       FORMS
    Wait Until Element Is Visible    ${ToolbarTitle}                                     10
    Element Text Should Be           ${ToolbarTitle}             FORMS             FORMS

Deve acessar a tela de vingadores  
    Get Started
    Open Nav

    Click Text                       AVENGERS
    Wait Until Element Is Visible    ${ToolbarTitle}                                     10
    Element Text Should Be           ${ToolbarTitle}             AVENGERS             AVENGERS


