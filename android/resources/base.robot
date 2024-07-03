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
Resource     ../pages/login.robot
Resource     ../resources/config.robot
Resource     ../resources/hooks.robot
#Resource     ../resources/extend.py

Variables    ../resources/dados/variaveis.yaml

*** Variables ***
${CPF_COM_CADASTRO}            269.144.448-11             
 

*** Keywords ***

gerar cpf aleatorio
    ${CPF_SEM_CADASTRO}        FakerLibrary.CPF
    Set Global Variable        ${CPF_SEM_CADASTRO}
    [Return]                   ${CPF_SEM_CADASTRO} 

Fazer login 
    [Arguments]                       ${e-mail}        ${senha}
    clicar no botao                   ${ENTRAR_BTN} 
    clicar no botao                   ${EMAIL_BTN}
    inserir texto                     ${EMAIL_TXT}           ${e-mail}
    inserir texto                     ${SENHA_TXT}           ${senha}
    clicar no botao                   ${ENTRAR_LOGIN_BTN} 
 
