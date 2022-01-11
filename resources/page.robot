*** Settings ***
Library              AppiumLibrary
Library              libs/extend.py

*** Variables ***
###   Botões   ###
${BtnEntrar}                        id=io.qaninja.android.twp:id/btnSubmit
${BtnRadioPython}                   xpath=//android.widget.RadioButton[contains(@text, 'Python')]
${BtnCliqueSimples}                 id=io.qaninja.android.twp:id/short_click
${BtnCliqueLongo}                   id=io.qaninja.android.twp:id/long_click
${BtnRemover}                       id=io.qaninja.android.twp:id/btnRemove
${CheckBoxRobot}                    xpath=//android.widget.CheckBox[contains(@text, 'Robot Framework')]
${EstadoDoCheckBoxRobot}            id=io.qaninja.android.twp:id/rvContainer
${Start}                            COMEÇAR
${Hamburguer}                       xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
${NavView}                          id=io.qaninja.android.twp:id/navView
${Spinner}                          id=io.qaninja.android.twp:id/spinnerJob
${ListView}                         class=android.widget.ListView

###   Campos   ###
${Email}                            id=io.qaninja.android.twp:id/etEmail
${Senha}                            id=io.qaninja.android.twp:id/etPassword



###   Outros   ###

${MsgPaginaLogin}                   Fala QA, vamos testar o login?
${MsgLoginSucesso}                  Show! Suas credenciais são validas.
${MsgTelaCadastro}                  Bem-vindo, crie sua conta.

