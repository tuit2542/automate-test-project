*** Settings ***
Documentation    TC-003 A test suited without password login.
Resource        ../resource/LoginKeywords.robot

*** Test Cases ***
Forgot Password Login
    Open Browser To Login Page
    Enter Username    user1234
    Submit Credentials
    Forgot Password Error Should Be Show
    [Teardown]    Close Browser