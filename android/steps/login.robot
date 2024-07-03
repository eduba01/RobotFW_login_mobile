*** Settings ***
Resource        ../resources/base.robot
 
*** Variables ***
 
*** Keywords ***
Dado que estou na tela principal do app
    Page Should Contain Element    ${ENTRAR_BTN}
    Page Should Contain Text       agora não, obrigado
 
Quando faço login
    Fazer login     ${login.email}        ${login.senha}

Então vejo a mensagem de usuário logado
    Wait Until Element Is Visible    ${MENU_LOGADO} 
    Page Should Contain Text         robotfw

 