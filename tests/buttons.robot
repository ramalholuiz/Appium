*** Settings ***

Resource              ../resources/base.robot
Test Setup            Open Session
Test Teardown         Close Session

*** Test Cases ***
Click Simples 
    [Tags]        short
    Go To Short Click

    Click Element                      ${BtnCliqueSimples}
    Wait Until Page Contains           Isso é um clique simples
    
Click Longo
    [Tags]        long
    Go To Long Click
    
    Long Press                         ${BtnCliqueLongo}   

    Wait Until Page Contains           CLIQUE LONGO OK

    