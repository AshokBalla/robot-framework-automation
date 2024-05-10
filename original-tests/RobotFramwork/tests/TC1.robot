*** Settings ***
Documentation    Simple Robot Framework Test
Library          SeleniumLibrary
Library          String

*** Variables ***
${URL}           http://orangehrm.qedgetech.com/
${BROWSER}       chrome
${USERNAME}      Admin
${PASSWORD}      Qedge123!@#

*** Test Cases ***
Login Test
    [Documentation]    Test login functionality with assertions
    [Tags]    login    web
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

loginToApplication
    [Documentation]    Test login functionality using custom keyword
    [Tags]    login    web
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Text    id=txtUsername    ${USERNAME}
    Sleep    1s
    Input Text    id=txtPassword    ${PASSWORD}
    Sleep    1s
    Click Button    id=btnLogin
    Sleep    3s
    Close Browser
