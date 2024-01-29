*** Settings ***

Library     AppiumLibrary

Resource    ../resources/base.resource

*** Test Cases ***

Deve realizar um clique SIMPLES
    Start APP
    Start Application
    Click Buttons               Clique em Botões
    Single Click                Clique simples    Botão clique simples

    Click Text                  CLIQUE SIMPLES
    Wait Until Page Contains    Isso é um clique simples

    End Session

Deve realizar um clique LONGO
    [Tags]   long
    Start APP
    Start Application
    Click Buttons               Clique em Botões
    Single Click                Clique longo    Botão clique longo

    ${locator}    Set Variable    id=com.qaxperience.yodapp:id/long_click

    ${position}    Get Element Location    ${locator}

    Tap With Positions          2000    ${${position}[x], ${position}[y]}
    Wait Until Page Contains    Isso é um clique longo

    End Session






