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
  