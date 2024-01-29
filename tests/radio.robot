*** Settings ***

Library     AppiumLibrary

Resource    ../resources/base.resource

*** Test Cases ***

Deve selecionar a opção Javascript
    Start APP
    Start Application
    Click Buttons               Check e Radio
    Single Click                Botões de radio    Escolha sua linguagem preferida

    Click Element               //android.widget.RadioButton[contains(@text, "Javascript")]
    Sleep    1
    
    
    End Session
    
