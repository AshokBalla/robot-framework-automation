*** Settings ***
Documentation    Simple Robot Framework Test
Library          SeleniumLibrary
Library          String

*** Variables ***
${URL}           http://orangehrm.qedgetech.com/
${BROWSER}       chrome
${USERNAME}      Admin
${PASSWORD}      Qedge123!@#
${EXPECTED_TITLE}    OrangeHRM
${DASHBOARD_URL}     dashboard

*** Test Cases ***
Login Test
    [Documentation]    Test login functionality with assertions
    [Tags]    login    web
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    2s
    loginToApplication
    verifyLoginSuccess
    Close Browser

*** Keywords ***
loginToApplication
    Input Text    id=txtUsername    ${USERNAME}
    Sleep    1s
    
    Input Text    id=txtPassword    ${PASSWORD}
    Sleep    1s
    
    Click Button    id=btnLogin
    Sleep    3s

verifyLoginSuccess
    [Documentation]    Verify that login was successful
    # Check if we're redirected to dashboard
    Wait Until Location Contains    ${DASHBOARD_URL}    timeout=10s
    Log    Successfully redirected to dashboard
    
    # Verify page title contains OrangeHRM
    ${current_title}=    Get Title
    Should Contain    ${current_title}    ${EXPECTED_TITLE}
    Log    Page title verification passed: ${current_title}
    
    # Check if dashboard elements are visible
    Wait Until Element Is Visible    id=menu_dashboard_index    timeout=10s
    Log    Dashboard menu is visible
    
    # Verify welcome message is present
    Wait Until Element Is Visible    id=welcome    timeout=10s
    Log    Welcome message is visible
    
    # Verify we're not on login page anymore
    ${current_url}=    Get Location
    Should Not Contain    ${current_url}    login
    Log    Successfully logged out of login page
    



