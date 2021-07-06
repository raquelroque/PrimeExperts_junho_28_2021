*** Settings ***
Documentation    arquivo responsavel pelas importacoes, variaveis e KeyWords
Library          SeleniumLibrary
Library    Screenshot
 
*** Variables ***

 
*** Keywords ***
## ----- suite setup
Abrir o navegador
    Open Browser    browser=Chrome
    

Fechar o navegador
    Close Browser
 
