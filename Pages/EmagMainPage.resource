*** Settings ***
Library    SeleniumLibrary

*** Variables *** 

${AcceptCookies}      //button[text()='Accept']
${GamingBooksTab}     //span[text()='Gaming, Carti & Birotica']
${Playstation}        //*[text()='Playstation']
${AddedToChart}       //span[text()='1'] 

*** Keywords ***

Accept cookies
    Wait Until Element Is Visible    ${AcceptCookies}  
    Sleep    2
    Click Element    ${AcceptCookies} 
    Sleep    2
Navigate to gaming 
    Click Element    ${GamingBooksTab}
Select playstation category 
    Click Element    ${Playstation}

Check product in chart   
    #Sleep    2      
    Page Should Contain Element   ${AddedToChart} 