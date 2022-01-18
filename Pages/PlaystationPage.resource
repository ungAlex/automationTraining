*** Settings ***
Library    SeleniumLibrary


*** Variables ***

${ConsolePlaystation}    //*[text()='Console Playstation'] 
${SortButton}            //button[@class='btn btn-sm btn-alt sort-control-btn gtm_ejaugtrtnc']
${SortOption}            //*[text()='Cele mai noi']
${SelectFirstEntry}      //*[@id="card_grid"]/div[1]/div
                        

*** Keywords ***

Select console playstation
    Click Element    ${ConsolePlaystation}
Sort the latest 
    Click Element    ${SortButton}
    Click Element    ${SortOption}

Select the first entry
    Sleep    1
    Click Element    ${SelectFirstEntry}