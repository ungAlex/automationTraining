*** Settings ***
Library    SeleniumLibrary

*** Variables *** 

${AcceptCookies}              //button[text()='Accept']

${SelectProductOptions}       //div[@class="megamenu-list-container"]//ul[@class="megamenu-list"]//span[text()=${ProductOptionText}]  
${SelectSubChategory}         //*[@class="emg-menu-wrapper emg-box-sizing"]//a[text()=${SubChategory}]
${AddedToChart}               //span[text()='1'] 
${ProductOptionText}            "Gaming, Carti & Birotica"
${SubChategory}                 "Playstation"

*** Keywords ***

Accept cookies
    Wait Until Element Is Visible    ${AcceptCookies}  
    Sleep    2
    Click Element    ${AcceptCookies} 
    Sleep    2
Navigate to gaming 
    Click Element    ${SelectProductOptions}
    #Sleep    5
Select playstation category 
    Click Element    ${SelectSubChategory}

Check product in chart   
    #Sleep    2      
    Page Should Contain Element   ${AddedToChart} 