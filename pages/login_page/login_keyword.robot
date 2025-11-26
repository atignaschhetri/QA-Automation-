*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN_URL}    https://opensource-demo.orangehrmlive.com/
${USERNAME_FIELD}    xpath://input[@placeholder="Username"]
${PASSWORD_FIELD}    xpath://input[@type="password"]
${LOGIN_BUTTON}    xpath://button[@type='submit']

*** Keywords ***
Open Login Page
    Open Browser    ${LOGIN_URL}    chrome
    Maximize Browser Window

Enter Username
    [Arguments]    ${username}
    Wait Until Element Is Visible    ${USERNAME_FIELD}    10s
    Input Text    ${USERNAME_FIELD}    ${username}

Enter Password
    [Arguments]    ${password}
    Input Text    ${PASSWORD_FIELD}    ${password}
        
Click Login Button
    Click Button    ${LOGIN_BUTTON}

Verify Login Successful
    ${https://opensource-demo.orangehrmlive.com/web/index.php/dashboard/index}=    Get Location
    Should Contain    ${https://opensource-demo.orangehrmlive.com/web/index.php/dashboard/index}    dashboard





