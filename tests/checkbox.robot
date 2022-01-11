*** Settings ***

Resource              ../resources/base.robot
Test Setup            Open Session
Test Teardown         Close Session

*** Test Cases ***
Seleciona Opcao Robot Framework
    Go To CheckBox

    Click Element                     ${CheckBoxRobot}
    Wait Until Element Is Visible     ${EstadoDoCheckBoxRobot}
    Element Attribute Should Match    ${CheckBoxRobot}    checked    true

    