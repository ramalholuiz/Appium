*** Settings ***

Resource              ../resources/base.robot
Test Setup            Open Session
Test Teardown         Close Session

# start_x - x-percent at which to start
# start_y - y-percent at which to start
# end_x - x-percent distance from start_x at which to stop
# end_y - y-percent distance from start_y at which to stop
# duration - (optional) time to take the swipe, in ms.
# y 18.46  => Horizontal Inicial
# x 86.30  => Vertical inicial
# y = 18.46 => Horizontal Final
# x = 35.60 => Vertical Final

*** Test Cases ***
Deve remover o capitao america
    Go To Avenger List
    Wait Until Page Contains         LISTA
    Swipe By Percent                 86.30    18.46    35.60    18.46
    Wait Until Element Is Visible    ${BtnRemover}    10
    Click Element                    ${BtnRemover}



