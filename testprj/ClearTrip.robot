*** Settings ***
Library    SeleniumLibrary    
Suite Teardown    Close All Browsers


*** Test Cases ***
Flight Booking
    Navigate to ClearTrip
    Book a round trip Flight

*** Keywords ***
Book a round trip Flight
    Select Radio Button    trip_type    RoundTrip
    Input Text    //*[@name='origin']    Pune, IN - Lohegaon (PNQ)
    Input Text    //*[@name='destination']    New Delhi, IN - Indira Gandhi Airport (DEL)
    Click Element    //*[@title='Depart date']    
    @{list}    Get WebElements    //div[@id='ui-datepicker-div']/div[@class='monthBlock first']
    Log To Console    ${list}
    ${element_count}       Get Element Count     //div[@id='ui-datepicker-div']/div[@class='monthBlock first']
       
    
    
    
Navigate to ClearTrip
    Open Browser    https://www.cleartrip.com/    chrome
    Maximize Browser Window
    
        
    