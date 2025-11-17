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

Setting counter value to desired value
    Go to  ${HOME_URL}
    Input Text  new_value  10
    Click Button  aseta arvo
    Page Should Contain  nappia painettu 10 kertaa