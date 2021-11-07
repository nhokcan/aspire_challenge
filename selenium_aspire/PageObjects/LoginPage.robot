*** Settings ***
Library     SeleniumLibrary
Resource    ${EXECDIR}/selenium_aspire/PageObjects/Common.robot

*** Variables ***
${LOGIN_USERNAME_LABEL}                  xpath://label[@for="login"]
${LOGIN_USERNAME_INPUT}                  xpath://*[@id="login"]
${LOGIN_PASSWORD_LABEL}                  xpath://label[@for="password"]
${LOGIN_PASSWORD_INPUT}                  xpath://*[@id="password"]
${LOGIN_LOG_IN_BTN}                   xpath://button[@type="submit"]

*** Keywords ***
Enter Username
    [Arguments]   ${username}
    Input Text    ${LOGIN_USERNAME_INPUT}    ${username}

Enter Password
    [Arguments]   ${password}
    Input Text    ${LOGIN_PASSWORD_INPUT}    ${password}

Click Log In Button
    Click Button    ${LOGIN_LOG_IN_BTN}

Login
    [Arguments]   ${username}=${username}   ${password}=${password}
    Enter Username    ${username}
    Enter Password    ${password}
    Click Log In Button

Open Browser to the Login Page
    Open Browser to the Home Page
    Go To    ${siteUrl}
