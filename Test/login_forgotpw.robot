*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/login_page/login.robot


*** Test Cases ***
ForgotPassword
    Open Browser
    Open Login Page
    Click Forgot Password
    Reset Password    Admin
    Click Button

