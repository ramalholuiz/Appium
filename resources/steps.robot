*** Settings ***
Documentation             Aqui estou os Steps que vao nos auxiliar
Resource                  page.robot
Library                   AppiumLibrary

*** Keywords ***
Get Started   
    AppiumLibrary.Wait Until Page Contains         ${Start}        20
    AppiumLibrary.Click Text                       ${Start} 

Open Nav 
    AppiumLibrary.Wait Until Element Is Visible    ${Hamburguer}    10

    AppiumLibrary.Click Element                    ${Hamburguer}
    AppiumLibrary.Wait Until Element Is Visible    ${NavView}                                          5

Go To Login Form 
    Open Nav

    Click Text                  FORMS
    Wait Until Page Contains    FORMS

    Click Text                  LOGIN
    Wait Until Page Contains    ${MsgPaginaLogin}
Go To Cadastro 
    Open Nav

    Click Text                  FORMS
    Wait Until Page Contains    FORMS

    Click Text                  CADASTRO
    Wait Until Page Contains    ${MsgTelaCadastro}
Go To Radion Buttons
    Open Nav

    Click Text                       INPUTS
    Wait Until Page Contains         INPUTS
    
    Click Text                       BOTÕES DE RADIO
    Wait Until Page Contains         Escolha sua linguagem preferida

Go To CheckBox
    Open Nav

    Click Text                       INPUTS
    Wait Until Page Contains         INPUTS
    
    Click Text                       CHECKBOX
    Wait Until Page Contains         Marque as techs que usam Appium
Go To Short Click
    Open Nav

    Click Text                       BOTÕES
    Wait Until Page Contains         CLIQUE SIMPLES

    Click Text                       CLIQUE SIMPLES
    Wait Until Page Contains         Botão clique simples

Go To Long Click
    Open Nav

    Click Text                       BOTÕES
    Wait Until Page Contains         CLIQUE LONGO

    Click Text                       CLIQUE LONGO
    Wait Until Page Contains         Botão clique longo

Go To Avenger List
    Open Nav

    AppiumLibrary.Click Text                       AVENGERS
    AppiumLibrary.Wait Until Page Contains         AVENGERS

    AppiumLibrary.Click Text                       LISTA
    AppiumLibrary.Wait Until Page Contains         LISTA

Escolha seu perfil
    [Arguments]    ${target}

    Click Element                     ${Spinner}
    Wait Until Element Is Visible     ${ListView}
    Click Text                        ${target}
        