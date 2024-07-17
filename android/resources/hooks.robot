*** Settings ***
Resource     base.robot
 
*** Variables ***
 

*** Keywords ***
inserir texto
    [Arguments]                       ${element}        ${texto}
    Wait Until Element Is Visible     ${element} 
    Input Text                        ${element}        ${texto}

clicar no botao
    [Arguments]                       ${element}
    Wait Until Element Is Visible     ${element}
    Element Should Be Enabled         ${element}
    Click Element                     ${element}

clicar no elemento
    [Arguments]                       ${element}
    Wait Until Element Is Visible     ${element}
    Element Should Be Enabled         ${element}
    Click Element                     ${element}
  
verificar se o elemento esta presente   
    [Arguments]                       ${element}
    wait until element is visible     ${element}
    Page Should Contain Element       ${element}

Rolar para baixo ate encontrar o elemento loop 
    [Arguments]       ${elemento}
    FOR    ${a}    IN RANGE    10
        ${IsElementVisible} =  Run Keyword And Return Status    Element Should Be Visible  ${elemento}
        Run Keyword If    '${IsElementVisible}'=='False'        swipe by percent    50     50     50    10  2000 
        ...     ELSE    Exit For Loop
    END  