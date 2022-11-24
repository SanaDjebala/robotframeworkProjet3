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
    Alert Should Be Present   Hello 
    #Handle Alert    accept 11 gere l'alerte
    Close All Browsers
    
