*** Settings ***
Library     OperatingSystem
Library    DateTime
*** Variables ***

*** Test Cases ***
Test Case 001 - Create file and write a content
    [Documentation]     Write a content of a file
    [Tags]  File documentation
    ${Filepath}=    Set Variable    file1.txt
    ${ContentOftheFile}=    Set Variable    This is the content to be added in the file
    Create File    ${Filepath}      ${ContentOftheFile}
    ${AddedContent}     Get File     ${filepath}
    Log    ${AddedContent}

Test Case 002 - Append the file content
    [Documentation]     Append the content of the existing file
    [Tags]  File Documentation
    ${Filepath}     Set Variable    file2.txt
    ${contentOftheFile}     Set Variable    This is the content to be appended in the file
    Append To File    ${Filepath}    ${contentOftheFile}
    ${appendedContent}      Get File    ${Filepath}
    Log    ${appendedContent}

*** Keywords ***