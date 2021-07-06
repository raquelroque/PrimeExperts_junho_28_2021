*** Settings ***
Documentation       Meu teste de variaveis em dicionario


*** Variables ***
&{Dados_Pessoa}    nome=Marta  
...                cpf=123.456.789-09   idade=34   telefone=(19)9974747444   email=mail@mail.com    data_nascimento=01/01/1987


**** Test Cases ***
Teste de impressao de dados pessoa
    Imprimir informacoes pessoa


**** Keywords ****


Imprimir informacoes pessoa
    Log To Console   Nome: ${Dados_Pessoa.nome} 
    Log To Console   CPF: ${Dados_Pessoa.cpf}
    Log To Console   Idade: ${Dados_Pessoa.idade}
    Log To Console   Telefone: ${Dados_Pessoa.telefone}
    Log To Console   Email: ${Dados_Pessoa.email}
    Log To Console   Data de Nascimento: ${Dados_Pessoa.data_nascimento}