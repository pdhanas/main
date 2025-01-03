*** Settings ***
Documentation   Simple calculation Test
Library     OperatingSystem
Library     Collections
Library    XML

*** Variables ***

*** Test Cases ***
Test Case 001
    [Documentation]     Test the addition
    #Variable declaration
    ${Addition}      Set Variable    2+3
    ${result}   Evaluate    ${Addition}
    Should Be Equal As Numbers   ${result}    5
    
Test Case 002
    [Documentation]     Test the subraction
    #Variable declaration
    ${Subraction}   Set Variable    3-2
    ${result}   Evaluate    ${Subraction}
    Should Be Equal As Numbers    ${result}    1

Test Case 003
    [Documentation]     Test the multiplication
    #Variable declaration
    ${multiplication}   Set Variable    3*2
    ${result}   Evaluate    ${multiplication}
    Should Be Equal As Numbers    ${result}    6

Test Case 004
    [Documentation]     Test the division
    #Variable declaration
    ${division}   Set Variable    4/2
    ${result}   Evaluate    ${division}
    Should Be Equal As Numbers    ${result}    2

Test Case 005
    [Documentation]     Test the Mod
    #Variable declaration
    ${mod}   Set Variable    3%2
    ${result}   Evaluate    ${mod}
    Should Be Equal As Numbers    ${result}    1

*** Keywords ***