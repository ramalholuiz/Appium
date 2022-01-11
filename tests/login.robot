*** Settings ***

Resource            ../resources/base.robot
Test Setup          Open Session
Test Teardown       Close Session


*** Test Cases ***
Deve logar com sucesso
    Go To Login Form

    Input Text                  ${Email}                eu@papito.io
    Input Text                  ${Senha}                qaninja
    Click Element               ${BtnEntrar}
    
    Wait Until Page Contains    ${MsgLoginSucesso}
