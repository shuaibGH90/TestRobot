*** Settings ***
Library    SeleniumLibrary
Library    requests  
Library    RequestsLibrary  
    

*** Keywords ***

    

open chrome
    Open Browser    https://google.com    chrome

Test Request
    Create Session    	github	http://api.github.com
    Create Session    json    https://jsonplaceholder.typicode.com/posts    
    ${response} =     Get Request    json   10
    # Log To Console    ${response.status_code}
    # ${response_string}    Convert To String    ${response.status_code}
    # Should Be Equal    ${response_string}    201  
    Log To Console    ${response.json()}    
    ${resp} =    Get Request    github    /users/bulkan  
    Log To Console    ${resp.json()} 
   

*** Test Cases ***
#Test Seleniuim
    #open chrome
    
Test case API
    Test Request