*** Settings ***

Library     AppiumLibrary

Resource    ../resources/base.resource

*** Test Cases ***

Deve marcar as techs que usam Appium 
    Start APP
    Start Application
    Click Buttons               Check e Radio
    Single Click                Checkbox    Marque as techs que usam Appium

    @{techs}    Create List    Ruby    Python    Java    Javascript    C#    Robot Framework

    FOR  ${techs}  IN  @{techs}

    Click Element               //android.widget.CheckBox[contains(@text, "${techs}")]
    Sleep    1
    
    END
    
    End Session
    
