*** Settings ***

Resource              ../resources/base.robot
Test Setup            Open Session
Test Teardown         Close Session

*** Test Cases ***
Seleciona um perfil no formulario de cadastro
    Go To Cadastro
    Escolha seu perfil    QA

Seleciona o perfil DevOps
    Go To Cadastro
    Escolha seu perfil    DevOps


