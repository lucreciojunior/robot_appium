*** Settings ***

Library    AppiumLibrary

*** Variables ***
${START}    QAX


*** Keywords ***

Start APP
    Open Application	http://localhost:4723	
    ...                platformName=Android	   
    ...                deviceName=Android Emulator    
    ...                automationName=UIAutomator2    
    ...                app=${EXECDIR}/app/yodapp-beta.apk
    ...                udid=emulator-5554
    ...                autoGrantPermissions=true

Start Application 
    Wait Until Page Contains    Yodapp          
    Wait Until Page Contains    ${START}    2
    Click Text                  ${START}

Click Buttons
    [Arguments]    ${iten_text}
    ${haburger}    Set Variable    //android.widget.ImageButton[@content-desc="Open navigation drawer"]

    Wait Until Element Is Visible    ${haburger}    5
    Click Element                    ${haburger}

    ${menu_item}    Set Variable    //*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="${iten_text}"]

    Wait Until Element Is Visible    ${menu_item}    5
    Click Element                    ${menu_item}
    
Single Click
    [Arguments]    ${inten_click}    ${check}
    Wait Until Page Contains         ${inten_click}    5
    Click Text                       ${inten_click}
    Wait Until Page Contains         ${check}          5

End Session
    Sleep    3
    Close Application