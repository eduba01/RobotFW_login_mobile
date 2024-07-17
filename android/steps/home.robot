*** Settings ***
Resource        ../resources/base.robot
 
*** Variables ***
 

*** Keywords ***
Dado que estou logado na home
    Abrir a home logado            ${login.email}        ${login.senha}
 
Quando realizo busca por "${busca}"
    sleep   3
    Fazer busca         ${busca}

E adiciono o produto na sacola
    Adicionar produto na sacola

Então vejo o produto "${busca}"
    verificar se o elemento esta presente       ${LISTA_PRODUTOS} 
    Page Should Contain Text    ${busca}        ${LISTA_PRODUTOS}  
    ${texto}   Get Text    ${PRODUTO_Nome}
    Log To Console    ${texto}
    Log               ${texto}
     
Então vejo o produto na sacola
    verificar se o elemento esta presente          ${PRODUTO_Titulo} 
    pegar o texto do elemento                      ${PRODUTO_Titulo} 
    verificar se o elemento esta presente          ${BTN_Comprar_Agora}