=
*** Settings ***
Documentation    arquivo página vitrine
Resource          homePage.robot
Library          SeleniumLibrary
Library    String


*** Variables ***

${LOCALIZADOR_ALERTA}         xpath://*[@id="center_column"]/p[@class='alert alert-warning']    
${LOCALIZADOR_TITULO_SUBCATEGORIA}          xpath://span[contains(@class,'cat-name')]


*** Keywords ***

Conferir mensagem "${mensagem}" 
    Wait Until Element Is Visible    ${LOCALIZADOR_ALERTA}  
    Element Text Should Be           ${LOCALIZADOR_ALERTA}    ${mensagem}

Conferir se os produtos da sub-categoria "${subcategoria}" foram mostrados na pagina
    Wait Until Element Is Visible    ${LOCALIZADOR_TITULO_SUBCATEGORIA}
    ${subcategoria_verificada}        Convert To Upper Case        ${subcategoria}
    Element Should Contain       xpath://span[@class='cat-name'][contains(.,'${subcategoria}')]      ${subcategoria_verificada}