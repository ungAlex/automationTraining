*** Settings ***
Library    SeleniumLibrary
Resource    ../Pages/EmagMainPage.resource
Resource    ../Pages/PlaystationPage.resource
Resource    ../Pages/FirstEntryPage.resource

*** Variables ***
${url}     https://emag.ro
${browser}     edge

*** Test Cases ***

Buy from Emag    
    Open Browser    url=${url}    browser=${browser}
    Accept cookies
    Navigate to gaming
    Select playstation category
    Select console playstation
    Sort the latest
    Select the first entry
    Add to chart
    Verify chart
    Check product in chart
    


    
    
    


