# Automação X
Projeto responsável por prover os scripts de automação de testes para o sistema X.

## 🚀 Começando
Essas instruções permitirão que você obtenha uma cópia do projeto em operação na sua máquina local para fins de desenvolvimento e teste.

### 📋 Pré-requisitos
Necessário que tenha instalado a ultima versão do [Python](https://www.python.org/downloads/).<br>
Necessário que tenha instalado a ultima versão do [Visual Studio Code](https://code.visualstudio.com/download)<br>
Necessário que tenha instalado a ultima versão do [GIT](https://git-scm.com/downloads)<br>
Necessário que tenha instalado a ultima versão do [Node.js®](https://nodejs.org/pt/download/)

### 🔧 Instalação
Ao abrir o VS code, execute os passos abaixo para baixar o projeto:
1) Clique na opção Source Control (CTLR+Shift+G G);
2) Clique em "Clone Repository";
3) E digite o seguinte caminho:
```
LINK
```
4) E selecione a pasta onde será armazenado o projeto.


Após instalação dos pré-requisitos, execute os comando abaixo no GIT BASH:
```
$ git config --global user.name "SEU NOME"
```
```
$ git config --global user.email SEU_EMAIL@exemplo.br
```


## ⚙️ Executando os testes
Antes de iniciar o projeto, precisamos instalar todas a libraries necessário para a execução dos testes automatizados. Para isso, executaremos o seguinte comando no terminal do vs code após abrir devidamente o projeto:
```
pip install --upgrade -r requirements.txt

```
```
rfbrowser init
```

Após isso, para executar os testes, execute o seguinte comando:
```
robot -d ./reports robot/tests
```

## 👥 Usuários
Os seguintes usuários foram criados para serem utiliados nos testes:

| Usuário | Papel |
| ------- | ----- |
| xxxxx | xxxxx |

## 📍 Nomeclatura de solicitação de Merge Request (MR)

### Branches

Nomes de branches são compostos de 2 partes:

1 — type ou categoria do branch. Os types podem ser os seguintes:
* docs: apenas mudanças de documentação;
* feat: uma nova funcionalidade;
* fix: a correção de um bug;
* perf: mudança de código focada em melhorar performance;
* refactor: mudança de código que não adiciona uma funcionalidade e também não corrigi um bug;
* style: mudanças no código que não afetam seu significado (espaço em branco, formatação, ponto e vírgula, etc);
* test: adicionar ou corrigir testes.  

2 — o que o branch faz em si.  

Exemplos de alguns nomes de branches que podem existir em nossa aplicação:  

* feat/cadastro-veiculo
* refactor/edicao-pessoa
* fix/busca-checklists

### Commits

O padrão foi fortemente inspirado nos guidelines de commit do angular.
Essa é a estrutura que seguimos para um commit:

* 1 — type ou categoria do commit: podem ser os mesmos utilizados para criar branches e que foram explicados acima;
* 2 — scope: onde a alteração foi feita. Aqui, criamos nossos próprios scopes que, na maioria dos casos, refletem o nome de uma funcionalidade; 
* 3 — subject: um resumo do commit. Deve utilizar o imperativo, como: faz, adiciona, altera, muda e etc;
* 4 — body: espaço utilizado para detalhar o que foi feito. É opcional.

Exemplo:
```
refactor(veículo): altera inserção da placa de veículo.

realizado refatoração na keyword "Veículos".
```