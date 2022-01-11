*** Settings ***

Library            AppiumLibrary



*** Test Cases ***
Abrir tela e validar informacao
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=Android Emulator
    ...                 app=${EXECDIR}/app/twp.apk


    Wait Until Page Contains    Training Wheels Protocol        20
    Wait Until Page Contains    Mobile Version                  20
    Close Application
