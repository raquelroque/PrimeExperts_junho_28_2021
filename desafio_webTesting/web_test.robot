*** Settings ***
Documentation    teste case web
Resource          resource_web.robot
Resource          homePage.robot
Resource          vitrinePage.robot
Resource          accountPage.robot
Suite Setup       Abrir o navegador
Suite Teardown    Fechar o navegador


 
*** Test Cases ***
Caso de Teste 01: Pesquisar produto existente
    Acessar a página home do site Automation Practice
    Digitar o nome do produto "Blouse" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir se o produto "Blouse" foi listado no site


Caso de Teste 02: Pesquisar produto não existente
    Acessar a página home do site Automation Practice
    Digitar o nome do produto "itemNaoExistente" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir mensagem "No results were found for your search "itemNaoExistente""

Caso de Teste 03: Listar Produtos
    Acessar a página home do site Automation Practice
    Passar o mouse por cima da categoria "Women" no menu principal superior de categorias
    Clicar na subcategoria "Summer Dresses"
    Conferir se os produtos da sub-categoria "Summer Dresses" foram mostrados na pagina


Caso de Teste 04: Adicionar Cliente
    Acessar a página home do site Automation Practice
    Clicar em "Sign in"
    Informar um e-mail válido
    Clicar em acao "Create an account"
    Preencher os dados obrigatórios
    Submeter Cadastro
    Conferir se o cadastro foi efetuado com sucesso