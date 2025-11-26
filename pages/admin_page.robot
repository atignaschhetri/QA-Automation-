*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN_URL}    https://opensource-demo.orangehrmlive.com/
${USERNAME_FIELD}    xpath://input[@placeholder="Username"]
${PASSWORD_FIELD}    xpath://input[@type="password"]
${LOGIN_BUTTON}    xpath://button[@type='submit']
${pim_button}     xpath://span[normalize-space()='PIM']
${add_button}    xpath://button[normalize-space()='Add']
${f_name}    xpath=//input[@name="firstName"]
${l_name}    xpath=//input[@name="lastName"]
${eid}    xpath=//label[text()='Employee Id']/parent::div/following-sibling::div//input
${save}    xpath=//button[@type="submit"]
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

Click PIM Button
    Wait Until Page Contains Element    ${pim_button}    10s
    Click Element    ${pim_button}

Click Add Employee Menu
    Wait Until Page Contains Element    ${add_button}    25s
    Wait Until Element Is Visible    ${add_button}    25s
    Click Element    ${add_button}
    Wait For Loader To Disappear
    Wait Until Element Is Visible   ${f_name}    5s



Wait For Loader To Disappear
    Wait Until Page Does Not Contain Element    xpath://div[contains(@class,'oxd-form-loader')]    20s


Input Firstname    [Arguments]    ${firstname}
    Input Text    ${f_name}    ${firstname}

Input Lastname    [Arguments]    ${lastname}
    Input Text    ${l_name}    ${lastname}

Input EmployeeId    [Arguments]    ${employee_id}
    Input Text    ${eid}    ${employee_id}

Click Save
    Wait For Loader To Disappear
    Click Button    ${save}
    Wait For Loader To Disappear





