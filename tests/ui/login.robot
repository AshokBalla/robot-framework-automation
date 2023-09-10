*** Settings ***
Resource    ../../resources/Common.resource
Variables   ../../variables/testdata.py

*** Test Cases ***
Login Smoke Flow
    Open Login Page
    Submit Credentials    ${USERS}[0][username]    ${USERS}[0][password]
    Validate Dashboard
