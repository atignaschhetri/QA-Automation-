*** Settings ***
Library    SeleniumLibrary




*** Test Cases ***
Handling Alerts
    Open Browser     https://testautomationpractice.blogspot.com/    chrome
    Click Element    xpath://button[@id="alertBtn"]
    Sleep    3s
    #Handle Alert    accept
    Handle Alert    dismiss
