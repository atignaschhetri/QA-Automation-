*** Settings ***
Library    SeleniumLibrary
Library    JSONLibrary
Library    Collections
Resource    ../pages/admin_page.robot

*** Variables ***
${JSON_FILE}    ${CURDIR}/../data_folder/data.json

*** Test Cases ***
[Tags]    smoke    Admin    positive
Add Multiple Employees
    Open Login Page
    Enter Username    Admin
    Enter Password    admin123
    Click Login Button
    Verify Login Successful
    Click PIM Button
    Click Add Employee Menu

    ${json}=    Load JSON From File    ${JSON_FILE}
    ${employees}=    Set Variable    ${json['employees']}

    ${index}=    Set Variable    1
    ${employee_dict}=    Create Dictionary

    FOR    ${emp}    IN    @{employees}
        ${key}=    Set Variable    emp_${index}
        Set To Dictionary    ${employee_dict}    ${key}=${emp}
        ${index}=    Evaluate    ${index} + 1
    END

    ${employee_keys}=    Get Dictionary Keys    ${employee_dict}

    FOR    ${emp_key}    IN    @{employee_keys}
        Log    Adding Employee: ${emp_key}

        ${emp}=     Get From Dictionary    ${employee_dict}    ${emp_key}
        ${f_name}=  Set Variable    ${emp['first_name']}
        ${l_name}=  Set Variable    ${emp['last_name']}
        ${eid}=     Set Variable    ${emp['employee_id']}

        Input Firstname    ${f_name}
        Input Lastname     ${l_name}
        Input EmployeeId   ${eid}

        Click Save
        Log    Employee ${f_name} ${l_name} saved successfully

        Click Add Employee Menu
    END

    Close Browser
