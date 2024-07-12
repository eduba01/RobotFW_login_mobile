*** Settings ***
Documentation    --- App enjoei  ---
...    Validar login e busca
...    
Resource        ../resources/base.robot
Default tags    positivo

Test Setup        Open App
Test Teardown     Fechar App 

*** Variables ***
 

*** Test Cases ***
CT01 - Validar login
    [Tags]     CT-001      login
    Dado que estou na tela principal do app
    Quando faço login
    Então vejo a mensagem de usuário logado
 