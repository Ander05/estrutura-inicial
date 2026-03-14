Language: Brazilian Portuguese

*** Settings ***
Resource    ../package.resource

Test Teardown    Run Keywords
...              Apagando arquivos download
...              Close Browser

*** Comments ***
robot -d ./reports -i padrao .


*** Test Cases ***
Teste padrão
    [Tags]    padrao
    Abrir navegação
    Debug