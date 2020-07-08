*** Settings ***
Library    SeleniumLibrary 

*** Keywords ***
Wait for PageLoad
        Set Browser Implicit Wait    30
Close Browser Instance
        SeleniumLibrary.Close Browser         
        
