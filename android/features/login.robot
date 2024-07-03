*** Settings ***
Documentation   POC - App enjoei  --------
...    Validar cadalogin 
...    Alterar e-mail e telefone do arquivo base.robot
Resource    ../resources/base.robot
Default tags    positivo

Test Setup        Open App
Test Teardown     Fechar App 

*** Variables ***
 
*** Test Cases ***
CT01 - Validar cadastro
    [Tags]     CT-001      eduardo.azevedo
    Dado que estou na tela principal do app
    Quando faço login
    Então vejo a mensagem de usuário logado
