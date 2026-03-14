*** Settings ***
Resource    ../base.resource

*** Keywords ***
Gerar PJ
    ${gerar_PJ}
    ...    Create Dictionary    
    ...    acao=gerar_empresa
    ...    pontuacao=S
    ...    estado=SP
    ...    idade=5
    
    ${Request_PJ}
    ...    POST
    ...    url=https://www.4devs.com.br/ferramentas_online.php
    ...    data=${gerar_PJ}    

    ${PJ_dados}    Parse HTML         ${Request_PJ.text} 
    ${PJ_CNPJ}     Get Input Value    ${PJ_dados}    cnpj
    Set Global Variable        ${PJ_CNPJ}


Gerar Pessoa
    ${gerar_pessoa}
    ...    Create Dictionary    
    ...    acao=gerar_pessoa
    ...    pontuacao=N
    ...    sexo=I
    ...    txt_qtde=4
    
    ${Request_Pessoa}
    ...    POST
    ...    url=https://www.4devs.com.br/ferramentas_online.php
    ...    data=${gerar_pessoa}

    Set Global Variable    ${Pessoa_1}    ${Request_Pessoa.json()[0]}
    Set Global Variable    ${Pessoa_2}    ${Request_Pessoa.json()[1]}


Gerar imagem de pessoa
    Create Session    sessao    https://thispersondoesnotexist.com
    ${resposta}=    GET On Session    sessao    /
    Should Be Equal As Integers    ${resposta.status_code}    200
    ${imagem_bytes}    Convert To Bytes    ${resposta.content}
    Create Binary File    ${downloadDir}${/}pessoa_fake.png    ${imagem_bytes}

