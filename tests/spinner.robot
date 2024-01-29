*** Settings ***

Library    AppiumLibrary

Resource    ../resources/base.resource

*** Test Cases ***

Deve escolher o nivel Padawan
    Start APP
    Start Application
    Click Buttons             Formulários
    Single Click              Cadastro    Crie sua conta.

    Preenhendo formularios    Junior    yoda@qax.com    jedi
    Select Level              Padawan    

    End Session

Deve escolher o nivel jedi
    Start APP
    Start Application
    Click Buttons             Formulários
    Single Click              Cadastro    Crie sua conta.

    Preenhendo formularios    Junior    yoda@qax.com    jedi
    Select Level              Jedi    

    End Session

Deve escolher o nivel Sith
    Start APP
    Start Application
    Click Buttons             Formulários
    Single Click              Cadastro    Crie sua conta.

    Preenhendo formularios    Junior    yoda@qax.com    jedi
    Select Level              Sith    

    End Session

Deve escolher o nivel Outros
    Start APP
    Start Application
    Click Buttons             Formulários
    Single Click              Cadastro    Crie sua conta.

    Preenhendo formularios    Junior    yoda@qax.com    jedi
    Select Level              Outros    

    End Session


*** Keywords ***

Preenhendo formularios
    [Arguments]    ${name}    ${email}    ${senha}
    Input Text    id=com.qaxperience.yodapp:id/etUsername    Junior
    Input Text    id=com.qaxperience.yodapp:id/etEmail       yoda@qax.com
    Input Text    id=com.qaxperience.yodapp:id/etPassword    jedi

Select Level
    [Arguments]    ${level}
    Click Element                    id=com.qaxperience.yodapp:id/spinnerJob
    Wait Until Element Is Visible    class=android.widget.ListView
    Click Text                       ${level}


