*** Settings ***
Documentation    TC-006 A test suited with a invalid credential login.
Resource        ../resource/LoginKeywords.robot

*** Test Cases ***
Invalid User And Password Login
    Open Browser To Login Page
    Enter Credentials    user1234    pass1234
    Submit Credentials
    Invalid Error Should Be Show
    [Teardown]    Close Browser