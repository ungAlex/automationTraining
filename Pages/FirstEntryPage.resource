*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${OtherOffer}          //*[@id="main-container"]/section[1]/div/div[2]/div[2]/div/div/div[2]/div[1]/div[2]/a
${AddToChartButton}    //*[text()='Adauga in Cos']
${ChartPopUp}          //a[text()='Vezi detalii cos']

*** Keywords ***

Add to chart 
    Click Element    ${OtherOffer}
    #Wait Until Element Is Visible    //div[@class='list-placeholder']
    Sleep     1
    Click Element    ${AddToChartButton}
Verify chart   
    Sleep    1  
    Click Element    ${ChartPopUp}
    