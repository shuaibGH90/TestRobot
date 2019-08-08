*** Settings ***
Library    SeleniumLibrary 
Library    Collections   
Test Teardown    Close All Browsers    


*** Test Cases ***
Naviagte to All the links present on the page
    Navigate the links
    

*** Keywords ***
Navigate the links
    Open Browser    https://www.robotframework.org    chrome
    
    ${AllLinksCount}=    Get Element Count  //*[@id="navigation"]/li
    Log To Console    ${AllLinksCount} 
    @{linkselemnet}    create list
    :FOR    ${index}     IN RANGE   1    ${AllLinksCount}   
    \    ${linktext}=    Get Text    //*[@id="navigation"]/li[${index}]/a
    \    Append To List   ${linkselemnet}     ${linktext}
    
    Log To Console    ${linkselemnet}    
    
    
    