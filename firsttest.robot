*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}       https://opensource-demo.orangehrmlive.com/
${Username}     Admin
${password}    admin123


*** Test Cases ***
Open orangehrm Website
     Open Browser    ${URL}     chrome
    Wait Until Element Is Visible     xpath://input[@placeholder="Username"]    15s
    Input Text    xpath://input[@placeholder="Username"]    ${Username}
    Input Text    xpath://input[@type="password"]    ${password}
    Click Button     xpath://button[@type='submit']
    Set Selenium Implicit Wait    10 seconds
    Wait Until Element Is Visible    xpath=//button[@title="Leave List"]    20s
    Click Button    xpath=//button[@title="Leave List"]
