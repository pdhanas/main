*** Settings ***
Library    DateTime

*** Variables ***

*** Test Cases ***
Test Case 001
    [Tags]  Year
    ${current_year}=    Get Time   year
    Should Be Equal    ${current_year}    2024
    Should Start With    ${current_year}    2
    Should Start With    ${current_year}    20
    Should End With    ${current_year}    24
    Should Not Be Equal    ${current_year}    2023

Test Case 002
    [Tags]  Day
    ${current_year}=    Get Time    day
    Should Be Equal    ${current_year}    18

Test Case 003
    [Tags]  Month
    ${current_year}=    Get Time    month
    Log     {current_year}
    Should Be Equal    ${current_year}    12

Test Case 004
    [Tags]  Use Get Date
    ${current_year}=    Get Current Date    
    ${current_Time}=    Get Time    Hour
    Log     ${current_year}
    Log     ${current_Time}
    Log Var1
    Log Var1
*** Keywords ***
Log Var1
    ${Date}=    Get Time
