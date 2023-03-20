*** Keywords ***
Open Login Page
    Log    Navigating to login page

Submit Credentials
    [Arguments]    ${username}    ${password}
    Log    Submitting credentials for ${username}

Validate Dashboard
    Log    Validating dashboard state
