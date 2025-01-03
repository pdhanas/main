*** Settings ***
Documentation       Login Functionality
Library         Selenium2Library

*** Variables ***
${url}  https://opensource-demo.orangehrmlive.com/
${Browser}  chrome

*** Test Cases ***
Test Case 001
    [Documentation]     Launch the url and verify the login page
    [Tags]  Smoke test
    open browser to login page
    Wait Until Element Is Visible    name:username  timeout=5
    Input Text    name:username    Admin
    Input Password    name:password    admin123
    Click Element    //button[@type='submit']

*** Keywords ***
open browser to login page
    Open Browser    ${url}      ${Browser}
    Maximize Browser Window

login page should be open
    Title Should Be    Login