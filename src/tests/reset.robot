*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
At start the counter is zero
    Go To  ${HOME_URL}
    Title Should Be  Laskuri 
    Click Button  Nollaa
    Page Should Contain  nappia painettu 0 kertaa
    
When counter has a nonzero value and it is reset the value becomes zero
    Go to  ${HOME_URL} 
    Click Button  Nollaa
    Page Should Contain  nappia painettu 0 kertaa