*** Settings ***
Library    SeleniumLibrary
Library    JSONLibrary
Library    Collections



*** Variables ***
${JSON_FILE}    ${CURDIR}/../data_folder/login_data.json


*** Test Cases ***
Verify Valid Credentials Exist
    ${data}=       Load JSON From File    ${JSON_FILE}
    ${valid}=      Get From Dictionary    ${data}    valid_credentials

    Should Not Be Empty    ${valid["username"]}
    Should Not Be Empty    ${valid["password"]}


Verify Invalid Credentials Are Present
    ${data}=        Load JSON From File    ${JSON_FILE}
    ${invalids}=    Get From Dictionary    ${data}    invalid_credentials



Check Each Invalid Credential Set
    ${data}=        Load JSON From File    ${JSON_FILE}
    ${invalids}=    Get From Dictionary    ${data}    invalid_credentials

    FOR    ${row}    IN    @{invalids}
        Dictionary Should Contain Key    ${row}    username
        Dictionary Should Contain Key    ${row}    password
    END