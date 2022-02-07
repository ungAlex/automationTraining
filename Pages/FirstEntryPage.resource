*** Settings ***
Library    SeleniumLibrary

*** Variables ***


${AddToChartButton}    //*[text()='Adauga in Cos']
${ChartPopUp}          //a[text()='Vezi detalii cos']
           

*** Keywords ***

Add to chart 
    
    ${exists}    Run Keyword And Return Status    Page Should Contain Element    //div[@class="product-cart-fav-buttons"]
    
    IF    '${exists}' == 'True'

        Click Element    //div[@class="product-cart-fav-buttons"]//button[@type="submit"]
    ELSE
        Click Element    //div[@class="product-highlight product-page-actions js-product-page-actions"]//a[@href="#-other-offers-list"]
    END
 
    Sleep     3
        
    Click Element    ${AddToChartButton}
    Sleep    3  
    ${ProdText}    Get Text     //span[@class="small"]   
        Set Global Variable    ${ProdText}
    Click Element    ${ChartPopUp}
    Sleep    1
    
    
Verify chart  
     
    ${ProdTextValidation}    Get Text    //div[@class="main-product-title-container emg-left"]//a[@class="line-item-title main-product-title"]
    
    IF    '${ProdTextValidation}' == '${ProdText}'
        Log To Console    Added to Chart
    ELSE
        Log To Console    Not Added to Chart
    END