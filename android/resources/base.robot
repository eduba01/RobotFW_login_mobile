*** Settings ***
Library      BuiltIn
Library      String
Library      AppiumLibrary
Library      Screenshot
Library      OperatingSystem
Library      Collections
Library      Process
Library      yaml
Library      FakerLibrary    locale=pt_BR

Resource     ../steps/login.robot
Resource     ../steps/home.robot
Resource     ../pages/login.robot
Resource     ../pages/home.robot
Resource     ../resources/config.robot
Resource     ../resources/hooks.robot
#Resource     ../resources/extend.py

Variables    ../resources/dados/variaveis.yaml

*** Variables ***
 

*** Keywords ***

Fazer login 
    [Arguments]                       ${e-mail}        ${senha}
    clicar no botao                   ${ENTRAR_BTN} 
    clicar no botao                   ${EMAIL_BTN}
    inserir texto                     ${EMAIL_TXT}           ${e-mail}
    inserir texto                     ${SENHA_TXT}           ${senha}
    clicar no botao                   ${ENTRAR_LOGIN_BTN} 
 
Abrir a home logado
    [Arguments]                       ${e-mail}        ${senha}
    Page Should Contain Element       ${ENTRAR_BTN}
    Page Should Contain Text          agora não, obrigado
    clicar no botao                   ${ENTRAR_BTN} 
    clicar no botao                   ${EMAIL_BTN}
    inserir texto                     ${EMAIL_TXT}           ${e-mail}
    inserir texto                     ${SENHA_TXT}           ${senha}
    clicar no botao                   ${ENTRAR_LOGIN_BTN} 

Fazer busca
    [Arguments]        ${busca}
    clicar no botao                    ${Menu_Busca} 
    clicar no elemento                 ${BUSCA_LBL}
    inserir texto                      ${BUSCA_LBL}    ${busca}
    Press Key Code         66          # Clica no botão ENTER - Android

Adicionar produto na sacola
    clicar no elemento                                    ${PRODUTO_Nome}
    Rolar para baixo ate encontrar o elemento loop        ${BTN_Adicionar_Carrinho}
    clicar no botao                                       ${BTN_Adicionar_Carrinho}                                             
    clicar no botao                                       ${BTN_Conferir_Sacolinha}

pegar o texto do elemento
    [Arguments]    ${elemento}
    verificar se o elemento esta presente    ${elemento}
    ${texto}   Get Text        ${elemento}        
    Log To Console             ${texto}
    Log                        ${texto}
    Set Global Variable        ${TXT_Elemento}    ${texto}
    [Return]    ${TXT_Elemento} 