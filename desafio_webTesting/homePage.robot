=
*** Settings ***
Documentation    arquivo pela pagina home
Library          SeleniumLibrary


*** Variables ***
${URL}    http://automationpractice.com
${LOCALIZADOR_PESQUISA}            id:search_query_top     
${LOCALIZADOR_SEARCH}              name:submit_search
${LOCALIZADOR_SUBCATEGORIA}        xpath:(//a[contains(.,'Summer Dresses')])[1]

*** Keywords ***
## --- acoes
Acessar a página home do site Automation Practice
    Go To    ${URL}

Digitar o nome do produto "${produto}" no campo de pesquisa
    Wait Until Element Is Visible       ${LOCALIZADOR_PESQUISA}
    Input Text    ${LOCALIZADOR_PESQUISA}     ${produto}

Clicar no botão pesquisar
    Click Button     ${LOCALIZADOR_SEARCH}

Conferir se o produto "${produto}" foi listado no site
    Wait Until Element Is Visible    //h5[@itemprop='name'][contains(.,'Blouse')]
    Element Text Should Be           //h5[@itemprop='name'][contains(.,'Blouse')]    ${produto}


Passar o mouse por cima da categoria "${categoria}" no menu principal superior de categorias
    Mouse Over    xpath=//a[@title="${categoria}"]
    Wait Until Element Is Visible    ${LOCALIZADOR_SUBCATEGORIA} 

Clicar na subcategoria "${sub_categoria}"
    Click Element    xpath:(//a[contains(.,'${sub_categoria}')])[1]


Clicar em "${link}"
    Click Link   ${link}