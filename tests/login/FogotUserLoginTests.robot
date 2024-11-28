*** Settings ***
Documentation    TC-002 A test suited without username login.
Resource        ../resource/LoginKeywords.robot

*** Test Cases ***
Forgot Username Login
    Open Browser To Login Page
    Enter Password    pass1234
    Submit Credentials
    Forgot Username Error Should Be Show
    [Teardown]    Close Browser
