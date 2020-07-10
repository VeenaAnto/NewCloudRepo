*** Settings ***
Documentation    Basic Login Functionality & Seach User&Role Account
Resource    ../../Resources/PageObjects/LoginPage.robot 
Resource    ../../Resources/CommonFunctionality.robot
Resource    ../../TestData/LoginData.robot
Library    SeleniumLibrary
Resource    ../../Resources/PageObjects/SecurityConsolePage.robot
Suite Setup    Log    Inside TestSuite
Suite Teardown    Log    Inside Suite Teardown
Test Setup    Log    Inside Test
Test Teardown    Log    Inside Test Teardown


*** Test Cases ***
VerifyDirectSignInOracleApplicationsCloud 
    # LoginPage.Setup firefoxdriver   
    [Tags]    Smoke Tests  
    LoginPage.Choose Browser    ${url}
    Set Screenshot Directory    ${OUTPUT FILE}${/}..${/}${TEST_NAME}${/}
    LoginPage.Input Login Credentials    ${username}    ${password}
    CommonFunctionality.Wait for PageLoad
    LoginPage.Click On SignIn
    CommonFunctionality.Wait for PageLoad
    LoginPage.Delay for Page Load
    LoginPage.Click on Home icon
    LoginPage.Verify Title of Home Page
    Capture Page Screenshot    HomePage.png
    
SecurityConsoleUserSearchTest
    
    [Tags]    Sanity Tests 
    SecurityConsolePage.Click SecurityConsole
    CommonFunctionality.Wait for PageLoad             
    SecurityConsolePage.Click Users
    CommonFunctionality.Wait for PageLoad
    SecurityConsolePage.Input Text and Click Search    veena 
    SecurityConsolePage.Verify Search Users Result
    CommonFunctionality.Close Browser Instance
    

        
    
    


