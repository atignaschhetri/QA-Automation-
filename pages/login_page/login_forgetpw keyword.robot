*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${LOGIN_URL}    https://opensource-demo.orangehrmlive.com/
${USERNAME}     xpath://input[@placeholder="Username"]
${PASSWORD}    xpath://input[@type="password"]
${BUTTON}    xpath://button[@type='submit']
${new}   xpath: //div[@class="orangehrm-card-container"]
*** Keywords ***
Open Login page
    Open Browser    ${LOGIN_URL}    chrome
    Maximize Browser Window

Click Forgot password
    Wait Until Element Is Visible    xpath://p[@class="oxd-text oxd-text--p orangehrm-login-forgot-header"]    15s
    Click Element    xpath://p[@class="oxd-text oxd-text--p orangehrm-login-forgot-header"]


Reset Password
    Wait Until Element Is Visible    xpath://input[@class="oxd-input oxd-input--active"]    10s
    [Arguments]    ${username1}
    Input Text    xpath://input[@class="oxd-input oxd-input--active"]    ${username1}

Click Button
    Click Element    xpath://button[@type="submit"]