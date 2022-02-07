*** Settings ***
Library    SeleniumLibrary


*** Variables ***

${SelectOffer}           //ul[@class="emg-aside-links"]//a[text()=${OfferText}]
${SortButton}            //button[@class='btn btn-sm btn-alt sort-control-btn gtm_ejaugtrtnc']
${SortOption}            //*[text()=${SortSelection}]
${SelectFirstEntry}      //*[@id="card_grid"]/div[1]
${OfferText}              "Console Playstation"  
${SortSelection}          "Cele mai noi"

*** Keywords ***

Select console playstation
    Click Element    ${SelectOffer}
Sort the results 
    Click Element    ${SortButton}
    Click Element    ${SortOption}
    Sleep    2

Select the first entry
    Sleep    1
    Click Element    ${SelectFirstEntry}