*** Settings ***
Documentation    TC-005 A test suited with a valid credential login.
Resource        ../../resources/LoginKeywords.robot

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Enter Credentials    ${VALID_USER}    ${VALID_PASSWORD}
    Submit Credentials
    Welcome Page Should Be Open
    [Teardown]    Close Browser


