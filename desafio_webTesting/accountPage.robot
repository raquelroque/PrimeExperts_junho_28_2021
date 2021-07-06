=
*** Settings ***
Documentation    arquivo para página de  login / cadastro
Library          SeleniumLibrary


*** Variables ***
${EMAIL_TEXT}            testemail@registro.com
&{DadosCadastro}         nome=Marta   sobrenome=Moreira   email=${EMAIL_TEXT}    senha=123456        endereco=Rua 25 de abril       cidade=Sao Paulo  estado=Alabama      cep=13730      pais=Uinited States   referencia=My address  celular=19997834488
 

${LOCALIZADOR_EMAIL}        id:email_create        


                      

*** Keywords ***


Informar um e-mail válido
    Wait Until Element Is Visible    id:email_create
    Input Text    ${LOCALIZADOR_EMAIL}    ${EMAIL_TEXT} 

Clicar em acao "${criar_conta}"
    Click Element    xpath://span[contains(.,'${criar_conta}')]

Preencher os dados obrigatórios
    Wait Until Element Is Visible    id:id_gender1
    Click Element    id:id_gender2
    Input Text       id:customer_firstname        ${Dados_Cadastro.nome}
    Input Text       id:customer_lastname      ${Dados_Cadastro.sobrenome}
    Input Text    id:email    ${Dados_Cadastro.email}
    Input Text    id:passwd    ${Dados_Cadastro.senha}
    Input Text       id:firstname        ${Dados_Cadastro.nome}
    Input Text       id:lastname      ${Dados_Cadastro.sobrenome}
    Input Text       id:address1      ${Dados_Cadastro.endereco}
    Input Text       id:city      ${Dados_Cadastro.cidade}
    Input Text       id:postcode    ${Dados_Cadastro.cep}
    Click Element    id:id_state
    Select From List By Label    id:id_state        ${Dados_Cadastro.estado} 
    Click Element    id:id_country
    Click Element    css:#id_state > option:nth-child(2)
    Input Text       id:phone_mobile    ${Dados_Cadastro.celular} 
    Input Text       id:alias    ${Dados_Cadastro.referencia} 

Submeter Cadastro
    Click Element    xpath://span[contains(.,'Register')]


Conferir se o cadastro foi efetuado com sucesso
    Wait Until Element Is Visible    xpath://p[contains(@class,'info-account')]
    Element Should Contain           xpath://p[contains(@class,'info-account')]        Welcome to your account

