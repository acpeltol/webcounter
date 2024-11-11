*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***

When input adds certain amount then it increases by its value
    Go To  ${HOME_URL}
    Click Button  Paina
    Input Text  value  10
    Click Button  aseta
    Page Should Contain  nappia painettu 11 kertaa
    Click Button  Nollaa