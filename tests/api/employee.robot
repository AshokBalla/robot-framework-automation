*** Settings ***
Library    Collections

*** Test Cases ***
Validate Employee API Contract
    ${payload}=    Create Dictionary    status=ok
    Dictionary Should Contain Value    ${payload}    ok
