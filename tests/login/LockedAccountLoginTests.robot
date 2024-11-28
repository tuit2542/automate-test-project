*** Settings ***
Documentation   TC-007 A test suited with locked account credential login.
Resource        ../resource/LoginKeywords.robot

*** Test Cases ***
Account Locked Login
    Open Browser To Login Page
    Enter Credentials    ${LOCKED_USER}    ${LOCKED_PASSWORD}
    Submit Credentials   
    Locked Account Error Should Be Show
    [Teardown]    Close Browser