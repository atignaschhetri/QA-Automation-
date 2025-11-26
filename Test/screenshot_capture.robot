*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/login_page/login_keyword.robot


*** Test Cases ***
Valid Login Test
    Open Login Page
    Enter Username    Admin
    Enter Password    admin123
    Capture Page Screenshot     C:/Users/Hp/PycharmProjects/PythonProject1/login_page.png    
    Click Login Button

