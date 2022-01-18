*** Settings ***
Resource     ../page_objects/loginPage.resource
Library     ../python_lib/custom_keywords.py
Library    Process
Library    XML
Library    OperatingSystem
Library    Collections

*** Variables ***
${url}    https://clever.com/oauth/sis/login?target=NTVmMjIwM2Y0NDMxNGEwMTAwMDA0OGUx%3BNGM2M2MxY2Y2MjNkY2U4MmNhYWM%3D%3BaHR0cHM6Ly9jbGV2ZXIuY29tL2luL2F1dGhfY2FsbGJhY2s%3D%3BNjY1ODJiN2RlYjIzNTU0NDYzOTQwYzc3MjRlMzZlY2VjOTZlOWEyNTU0MjkwMDk3ZDllNjZkMDIwNDMyMThmZQ%3D%3D%3BY29kZQ%3D%3D%3B&skip=1&default_badge=
${browser}    edge 

*** Test Cases ***
Login with admin to edge 
    Open Browser    url=${url}    browser=${browser}
    #Maximize Browser Window
    Input Text    id:username    skelly 
    Input Text    id:password    clever
    Click Button    id:UsernamePasswordForm--loginButton
    Wait Until Page Contains Element    xpath://*[@id="portal.teacher.homepage"]
    Click Button    id:Menu--trigger--1
    
    #Wait Until Page Contains Element    //*[@id="Menu--dropdown--1"]/li[4]
    #Click Element    xpath://*[@id="Menu--dropdown--1"][last()] 

    #Log Element    xpath://*[@id="__MAIN_APP__"]/div[1]/div[3]/div[1]/div[1]/div/div[4]/div[2]   

    
    Click Element    //*[@id="Menu--dropdown--1"]/li[4]
    Wait Until Page Contains Element    //*[@id="react-server-root"]/div/div[1]

    
    
    [Teardown]    Close Browser

    #Click Element    //*[@id="Menu--dropdown--1"]
    #Wait Until Page Contains Element    id:portal.teacher.homepage
    #Page Should Contain Image    src:<img class="TeacherSidebar--SidebarButton--icon TeacherSidebar--SidebarButton--icon--small" src="https://assets.clever.com/launchpad/75dee93d6/images/help_students.svg" alt="Students in classroom">
    #Page Should Contain    ${Super Duper Elementary}
    #[Teardown]    Close Browser