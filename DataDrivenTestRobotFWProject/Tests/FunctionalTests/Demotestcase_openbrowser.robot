*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/PageObjects/SecurityConsolePage.robot
Resource    ../../Resources/CommonFunctionality.robot
Suite Setup    Log    Inside TestSuite
Suite Teardown    Log    Inside Suite Teardown
Test Setup    Log    Inside Test
Test Teardown    Log    Inside Test Teardown

*** Test Cases ***
SecurityConsoleTest
     ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()
    Call Method    ${options}    add_experimental_option    debuggerAddress    ${value}   
    Create Webdriver    Chrome    options=${options}
    Set Browser Implicit Wait    30
    # Input Text    id=userid    ${CREDENTIALS1}
    # Input Text    id=password    ${CREDENTIALS2}
    # Click Button    id=btnActive 
    # Wait Until Page Contains    Welcome    
    # Title Should Be    Welcome    Page Title Verified
    Wait Until Page Contains Element    xpath=//img[@id='pt1:_UIScmil2u::icon'] 
    Capture Page Screenshot    HomePage.png
    Click Element    xpath=//a[@id='pt1:_UISmmLink']//*[local-name()='svg']
    # Click Element    xpath=//h1[contains(@class,'xnr')]   
    SecurityConsolePage.Click SecurityConsole
    Sleep    5             
    SecurityConsolePage.Click Users
    Sleep    10
    SecurityConsolePage.Input Text and Click Search    veena 
    SecurityConsolePage.Verify Search Users Result
    CommonFunctionality.Close Browser Instance
       
*** Variables ***
# ${URL}    https://enod-dev1.fa.em2.oraclecloud.com/  
# ${CREDENTIALS1}    Veena.Anto@resmed.com    
# ${CREDENTIALS2}    Resmed123
${value}    localhost:9014




