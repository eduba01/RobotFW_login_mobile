*** Settings ***
Documentation    --- App enjoei  ---
...    Validar a home
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
    Quando realizo busca por "${produtos.produto_1}"
    Então vejo o produto "${produtos.produto_1}"

CT02 - Validar produto na sacola       
    [Tags]     CT-002      
    Dado que estou logado na home
    Quando realizo busca por "${produtos.produto_1}"
    E adiciono o produto na sacola
    Então vejo o produto na sacola


