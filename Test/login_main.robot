*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/login_page/login_keyword.robot


*** Test Cases ***
Valid Login Test
    [Tags]    smoke    login     positive
    Open Login Page
    Enter Username    Admin
    Enter Password    admin123
    Click Login Button
    Verify Login Successful
    Close Browser

