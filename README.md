# Robot com Appium

## Alguns comandos para cmd

robot -d ./logs -i long tests\buttons.robot
O -i é um include você está adicionando uma tag

robot -d ./logs -e long tests\buttons.robot
O -e é um exclude você está excluindo uma tag, ou seja, roda todo codigo menos a tag
selecionada

robot -d ./logs tests\buttons.robot
Comando padrão em que o -d cria e salva os Logs na pasta logs

robot tests\buttons.robot
Comando Simples em que está rodando o arquivo buttons que se encontra dentro da pasta
tests e como não está sendo criado a pasta para os logs tudo será criado solto na pasta
