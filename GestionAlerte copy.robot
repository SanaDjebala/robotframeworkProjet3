*** Settings ***
Library    SeleniumLibrary
*** Variables ***
*** Test Cases ***
Test gerer alerte
    Open Browser   http://omayo.blogspot.com/    gc
    Maximize Browser Window
    Sleep    3
    Click Element    xpath=//input[@id='alert1']
    Sleep    3
    #Alert Should Be Present   Hello 
    ${message_alert}    Handle Alert
    Log To Console    ${message_alert}
    Should Be Equal    ${message_alert}    Hello    
    ${UrlSite}    Get Location
    Should Be Equal    ${UrlSite}    http://omayo.blogspot.com/     
    Close Browser
    
