*** Settings ***
Documentation    TC-004 A test suited with a no input login.
Resource        ../resource/LoginKeywords.robot

*** Test Cases ***
Account Locked Login
    Open Browser To Login Page
    Submit Credentials   
    No Input Error Should Be Show
    [Teardown]    Close Browser