*** Settings ***
Resource    ../base.resource


*** Keywords ***
Abrir navegação
    Set Test Variable    ${downloadDir}    ${EXECDIR}${/}arquivos${/}downloads
    Set Test Variable    ${uploadDir}      ${EXECDIR}${/}arquivos${/}uploads
    Create Directory     ${downloadDir}
    Create Directory     ${uploadDir}

    New Browser    chromium        headless=False    downloadsPath=${downloadDir}    args=["--start-maximized"]     slowMo=0.5s
    New Context    locale=pt-BR    viewport=${None}    timezoneId=America/Sao_Paulo
    #New Page       ${link.url}
    New Page       ${links}


Apagando arquivos download
    ${arquivos}    List Directory    ${downloadDir}    #    pattern=*.pdf
    FOR    ${arquivo}    IN    @{arquivos}
        Remove File    ${downloadDir}${/}${arquivo}
    END


ler qrcode
    [Arguments]    ${element}
    ${foto}    Take Screenshot    filename=${downloadDir}${/}teste    selector=${element}
    ${url}    ler qrcode    ${foto}

