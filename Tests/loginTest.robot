*** Settings ***
Resource     ../page_objects/loginPage.resource
Library     ../python_lib/custom_keywords.py

*** Variables ***
${url}     https://google.com 
${browser}     chrome

*** Test Cases ***
Login with admin user
    Open Browser    url=${url}    browser=${browser}
    Do Smth
    [Teardown]    Close Browser