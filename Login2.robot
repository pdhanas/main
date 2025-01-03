*** Settings ***
Library     Selenium2Library
Resource    Login.robot

*** Keywords ***
Login should Fail when invalid credentials is provided
    Element Should Contain    //div[@class='oxd-alert-content oxd-alert-content--error']//p[1]    ${error message}

Open Browser to login page
    Open Browser    ${url}      ${Browser}
*** Variables ***
${error message}    Invalid credentials
${url}  https://opensource-demo.orangehrmlive.com/
${Browser}  Chrome

*** Test Cases ***
Test Case 001
    [Documentation]     Verify the login fails when the credentials provide are invalid
    [Tags]  Smoke
    open browser to login page
    Wait Until Element Is Visible    name:username  5
    Input Text    name:username    admin123
    Input Password    name:password    admin123
    Click Button    //div[@class='oxd-form-actions orangehrm-login-action']//button[1]
    Set Browser Implicit Wait    15
    Login should Fail when invalid credentials is provided
    Should Be Equal    Success    ${error message}

