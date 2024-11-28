*** Settings ***
Documentation    TC-001 A test suited with input fields can enter data.
Resource        ../resource/LoginKeywords.robot

*** Test Cases ***
Forgot Username Login
    Open Browser To Login Page
    Enter Username         ${VALID_USER}
    Enter Password         ${VALID_PASSWORD}
    Fields Have Data       ${VALID_USER}    ${VALID_PASSWORD}
    [Teardown]    Close Browser