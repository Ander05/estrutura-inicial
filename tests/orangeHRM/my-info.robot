Language: Brazilian Portuguese

*** Comments ***
robot -d ./reports -i padrao .



*** Settings ***
Resource    keywords/keywords-my-info.resource

Test Setup    Run Keywords
...           Definir link
...           Abrir navegação

Test Teardown    Run Keywords
...              Apagando arquivos download
...              Close Browser


*** Test Cases ***
Teste padrão
    [Tags]    padrao
    Quando Realizar login
    Debug

