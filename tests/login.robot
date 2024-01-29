*** Settings ***

Library    AppiumLibrary

Resource    ../resources/base.resource

*** Test Cases ***

Deve logar com sucesso
    Start APP
    Start Application
    Click Buttons    Formulários
    Single Click     Login    Olá Padawan, vamos testar o login?

    Input Text       id=com.qaxperience.yodapp:id/etEmail           yoda@qax.com
    Input Text       id=com.qaxperience.yodapp:id/etPassword        jedi
    Click Element    id=com.qaxperience.yodapp:id/btnSubmit

    Wait Until Page Contains    Boas vindas, logado você está.

    End Session

Não deve logar com a senha incorreta
    # [Tags]    task
    Start APP
    Start Application
    Click Buttons    Formulários
    Single Click     Login    Olá Padawan, vamos testar o login?

    Input Text       id=com.qaxperience.yodapp:id/etEmail           yoda@qax.com
    Input Text       id=com.qaxperience.yodapp:id/etPassword        sith
    Click Element    id=com.qaxperience.yodapp:id/btnSubmit

    Wait Until Page Contains    Oops! Credenciais incorretas.

    End Session
    