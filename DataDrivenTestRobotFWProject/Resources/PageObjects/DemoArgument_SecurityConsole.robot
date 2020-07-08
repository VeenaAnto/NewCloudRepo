*** Settings ***
Library    SeleniumLibrary
Library    DataDriver    ../TestData/TestData.xlsx    sheet_name=Sheet1

*** Test Cases ***
Demotestcase
    Argument SearchText    veena

***Keywords***

Argument SearchText
    [Arguments]    ${arg1}
    log    ${arg1} 
          
Click SecurityConsole
    Click Element    ${SECURITY_CONSOLE}
Click Users    
    Click Element    ${USERS}
Input Text and Click Search     [Arguments]    ${arg1}
    Click Element    ${SEARCHBOX}      
    Input Text    ${SEARCHBOX}    ${arg1}       
    Click Element    ${SEARCH_ICON}
Verify Search Users Result     
    Click Element    ${RESULT}
    Click Element    ${DONE}                                                     
    

*** Variables ***
${SECURITY_CONSOLE}     xpath=//a[@id='_FOpt1:nv_ASE_FUSE_SECURITY_CONSOLE']       
${USERS}    xpath=//div[@id='_FOpt1:_FOr1:0:_FOSrASE_FUSE_SECURITY_CONSOLE:0:_FOTsdiASE_FUSE_UM_WORKAREA::text']
${SEARCHBOX}    xpath=//input[@id='_FOpt1:_FOr1:0:_FOSrASE_FUSE_SECURITY_CONSOLE:0:_FOTr1:1:sp1:f1:it1::content']
${SEARCH_ICON}    xpath=//img[@id='_FOpt1:_FOr1:0:_FOSrASE_FUSE_SECURITY_CONSOLE:0:_FOTr1:1:sp1:f1:cil1::icon']
${RESULT}    xpath=//a[@id='_FOpt1:_FOr1:0:_FOSrASE_FUSE_SECURITY_CONSOLE:0:_FOTr1:1:sp1:usrList:0:cl1']
${DONE}    xpath=//button[@id='_FOpt1:_FOr1:0:_FOSrASE_FUSE_SECURITY_CONSOLE:0:_FOTr1:2:sp1:cb2']

