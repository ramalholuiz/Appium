*** Settings ***

Resource              ../resources/base.robot
Test Setup            Open Session
Test Teardown         Close Session

*** Test Cases ***
Seleciona Opcao Python
    Go To Radion Buttons

    Click Element                     ${BtnRadioPython}
    Wait Until Element Is Visible     ${BtnRadioPython}
    Element Attribute Should Match    ${BtnRadioPython}    checked    true

    