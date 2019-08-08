*** Settings ***
Library    SeleniumLibrary    
Library    Collections    


*** Keywords ***
Test Dictionaries
    &{Test Dictionaries}    Create Dictionary    name=shuaib    lastname=shaikh
    Log To Console    ${Test Dictionaries}  
    ${values}     Get Dictionary Items    ${Test Dictionaries}  
    Log To Console    ${values}        
    ${Keys}    Get Dictionary Keys    ${Test Dictionaries}  
    Log To Console    ${Keys} 
    ${values}    Get Dictionary Values    ${Test Dictionaries}    
    Log To Console    ${Test Dictionaries}         
    Dictionary Should Contain Value    ${Test Dictionaries}    shuaib 
       


*** Test Cases ***
Test_004_Test Dictionaries
    Test Dictionaries