*** Settings ***
Library    SeleniumLibrary    
Library    OperatingSystem
    

*** Keywords ***
# Setup firefoxdriver
    # Set Environment Variable    webdriver.geckodriver.driver    C:\Python\Scripts\geckodriver.exe
    

Choose Browser    [Arguments]    ${url}  
     Open Browser    ${URL}    chrome
Input Login Credentials    [Arguments]    ${username}    ${password}
     Input Text    id=userid    ${username}
     Input Text    id=password    ${password}
Click On SignIn
     Click Button    id=btnActive
# Single Sign On
     # Click Element    xpath=//button[@id='ssoBtn']  
Delay for Page Load     
     Wait Until Page Contains    Welcome
     Maximize Browser Window
Click on Home icon
    Click Element    xpath=//a[@id='pt1:_UISmmLink']//*[local-name()='svg']        
Verify Title of Home Page      
     Title Should Be    Welcome    Page Title Verified        

*** Variables ***
# ${URL}    https://enod-dev1.fa.em2.oraclecloud.com/  



