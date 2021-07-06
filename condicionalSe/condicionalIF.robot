*** Settings ***
Documentation     testando utilizacao condicional Se
Library    Collections


***Test Cases***  
jogo do adivinha        
    Eu tenho o numero    10

***Keywords***
Eu tenho o numero
    [Arguments]    ${possuo_o_numero}
    Ganhei o jogo "${possuo_o_numero}"

Ganhei o jogo "${numero_recebido}"
    ${mensagem_vencedora}    Set Variable    voce ganhou o jogo
    IF    ${numero_recebido} == ${5}
        Log To Console    você ganhou o jogo
    ELSE IF    ${numero_recebido} == ${8}
        Log To Console    ${mensagem_vencedora}
    ELSE 
        Log To Console    voce perdeu.....
    END
