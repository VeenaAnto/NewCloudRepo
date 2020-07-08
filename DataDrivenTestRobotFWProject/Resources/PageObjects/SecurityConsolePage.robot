*** Settings ***
Library    SeleniumLibrary

# Library    DataDriver   ../../TestData/TestData.xlsx    sheet_name=Sheet1
    
***Keywords***
Argument SearchText
    [Arguments]    ${arg1}
    log    ${arg1} 
          
Click SecurityConsole
    Click Element    ${SECURITY_CONSOLE}
    Capture Page Screenshot    Security_console.png
Click Users    
    Click Element    ${USERS}
Input Text and Click Search     [Arguments]    ${arg1}
    Wait Until Element Is Enabled    ${SEARCHBOX}    
    Click Element    ${SEARCHBOX}      
    Input Text    ${SEARCHBOX}    ${arg1}       
    Click Element    ${SEARCH_ICON}
Verify Search Users Result    
    Click Element    ${RESULT}
    Page Should Contain Element    ${DETAILS}
    Capture Page Screenshot    User_Details.png
    Click Element    ${DONE}                                                     
    

*** Variables ***
${SECURITY_CONSOLE}    id=pt1:nv_ASE_FUSE_SECURITY_CONSOLE
${USERS}    xpath=//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div[2]//div[1]//a[1]//div[1]
${SEARCHBOX}    xpath=//td//td//td//td//td[1]//span[1]//input[1]
${SEARCH_ICON}    //html//body//div//form//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//table//tbody//tr//td//div//div//div//div//div//div//div//div//div//div//div//div//table//tbody//tr//td//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//table//tbody//tr//td//table//tbody//tr//td//table//tbody//tr//td//a//img
${RESULT}    xpath=//html//body//div//form//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//table//tbody//tr//td//div//div//div//div//div//div//div//div//div//div//div//div//table//tbody//tr//td//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//table//tbody//tr//td//span//div//div//a
${DETAILS}    xpath=//td//td[1]//div[1]//div[1]//div[1]//div[1]//table[1]//tbody[1]//tr[1]//td[2]//div[1]//h1[1]
${DONE}    xpath=//td[5]//button[1]

