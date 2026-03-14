*** Settings ***
Resource     ../base.resource


*** Keywords ***
Definir link
    Set Global Variable    ${links}    ${page_global.url.link}

Clicar no botão '${text}'
    Click    ${page_global.communs.button.format(text="${text}")}

Buscando Login/Senha
    ${username}    Get Text         ${page_global.login.text_username}
    ${username}    Get Substring    ${username}    11
    ${password}    Get Text         ${page_global.login.text_password}
    ${password}    Get Substring    ${password}    11

    Set Global Variable    ${username}
    Set Global Variable    ${password}

Realizar login
    Buscando Login/Senha
    Fill Text     ${page_global.login.input_username}    ${username}
    Fill Text     ${page_global.login.input_password}    ${password}
    Clicar no botão 'Login'

