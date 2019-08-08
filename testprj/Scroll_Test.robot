** Settings ***
Library           SeleniumLibrary
Suite Teardown    Close All Browsers
*** Test Cases ***
Scroll Page
    Open Browser    http://demo.mahara.org    chrome
    Maximize Browser Window
    Sleep    5s
    Scroll Page To Location    0    5000
    Capture Page Screenshot    

*** Keywords ***
Scroll Page To Location
    [Arguments]    ${x_location}    ${y_location}
    Execute JavaScript    window.scrollTo(${x_location},${y_location})