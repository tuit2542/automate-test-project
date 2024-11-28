*** Settings *** 
Documentation            A resource file with reusable keyword and variables.
Library                  SeleniumLibrary
Resource                 CommonVariables.robot              

*** Variables *** 

#Error Dectector
${ERROR_ELEMENT}       xpath=//*[@id="login_button_container"]/div/form/div[3]/h3
${LOGIN_INVALID_TEXT}        Epic sadface: Username and password do not match any user in this service
${FORGOT_USER_TEXT}          Epic sadface: Username is required
${FORGOT_PASS_TEXT}          Epic sadface: Password is required
${LOCKED_ACCOUNT_TEXT}       Epic sadface: Sorry, this user has been locked out.

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN_URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
    Title Should Be    Swag Labs

Go To Login Page
    Go To    ${LOGIN_URL}
    Login Page Should Be Open

Enter Credentials
    [Arguments]    ${username}  ${password}
    Input Text     user-name    ${username}
    Input Text     password     ${password}

Enter Username
    [Arguments]    ${username}
    Input Text     user-name     ${username}

Enter Password
    [Arguments]    ${password}
    Input Text     password     ${password}


Fields Have Data
    [Arguments]    ${username}    ${password}
    Textfield Should Contain    user-name    ${username}
    Textfield Should Contain    password    ${password}

Submit Credentials
    Click Button    login-button

Welcome Page Should Be Open
    Location Should Be    ${WELCOME_URL}
    Title Should Be        Swag Labs

Verify Error Message
    [Arguments]    ${expected_error}
    Location Should Be    ${LOGIN_URL}
    Wait Until Element Is Visible    ${ERROR_ELEMENT}    3s
    Element Text Should Be    ${ERROR_ELEMENT}    ${expected_error}

Invalid Error Should Be Show
    Verify Error Message    ${LOGIN_INVALID_TEXT}  

Forgot Username Error Should Be Show
    Verify Error Message    ${FORGOT_USER_TEXT}  

Forgot Password Error Should Be Show
    Verify Error Message    ${FORGOT_PASS_TEXT}

Locked Account Error Should Be Show
    Verify Error Message    ${LOCKED_ACCOUNT_TEXT}  

No Input Error Should Be Show
    Verify Error Message    ${FORGOT_USER_TEXT} 
    