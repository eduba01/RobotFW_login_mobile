*** Settings ***
Documentation    --- App enjoei  ---
...    Validar busca
...    
Resource        ../resources/base.robot
Default tags    positivo

Test Setup        Open App
Test Teardown     Fechar App 

*** Variables ***
 

*** Test Cases ***
CT01 - Validar busca       
    [Tags]     CT-001      busca
    Dado que estou logado na home
    Quando realizo busca por "${home.busca.camiseta}"
    Então vejo o produto "${home.busca.camiseta}"
