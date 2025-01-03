*** Settings ***

*** Variables ***
${var1}     Hello from variable
${var2}     Hello from variable2

*** Test Cases ***
TestcaseID_0001
    [Tags]  Happy path
    [Documentation]    Test case to check the happypath workflow of variable and keyword
    Log     ${var1}
    Log Keyword
    Should Be Equal    ${var1}    Hello from variable
#    Should Be Equal    ${var2}    Hello

TestcaseID_0002
    [Tags]  Functional
    [Documentation]     Test case to check the functional workflow of variable and keyword
    Log     ${var1}
    Log Keyword
    Should Be Equal    ${var1}    Hello from variable
    Should Be Equal    ${var2}    Hello

*** Keywords ***
Log Keyword
    Log    Hello from Keyword
