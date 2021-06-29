*** Settings ***
Documentation       Meu teste de variaveis


*** Variables ***
${MENSAGEM}         Hello world!


**** Test Cases ****
Meu teste de impressao de mensagem no terminal
    Logar no terminal uma mensagem


**** Keywords ****
Logar no terminal uma mensagem
    Log To Console      ${MENSAGEM} 
