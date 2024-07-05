*** Settings ***
Resource        ../resources/base.robot
 
*** Variables ***
 

*** Keywords ***
Dado que estou logado na home
    Abrir a home logado            ${login.email}        ${login.senha}
 
Quando realizo busca por "${busca}"
    sleep   3
    Fazer busca         ${busca}

Então vejo o produto "${busca}"
    verificar se o elemento esta presente       ${LISTA_PRODUTOS} 
    Page Should Contain Text    ${busca}        ${LISTA_PRODUTOS}  
