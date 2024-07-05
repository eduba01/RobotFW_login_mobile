*** Settings ***
Resource        ../resources/base.robot
 
*** Variables ***
 
*** Keywords ***
Dado que estou na tela principal do app
    verificar se o elemento esta presente    ${ENTRAR_BTN}
    Page Should Contain Text                 agora não, obrigado
 
Quando faço login
    Fazer login     ${login.email}        ${login.senha}
 
Então vejo a mensagem de usuário logado
    verificar se o elemento esta presente    ${MENU_LOGADO} 
    Page Should Contain Text                 ${login.usuario_logado}
 