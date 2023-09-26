*** Settings ***    

Library         SeleniumLibrary  


*** Variables ***


*** Test Cases ***

Check contrast change
    Open the mainpage
    Click Element    xpath=//*[@id="contrast-change"]
    Sleep    2s
    Page Should Contain Element    xpath=//body[contains(@class, 'body-contrast')]
    Log    The accessibility contrast mode is on.
    [Teardown]    Close Browser

*** Keywords ***
Open the mainpage
    create Webdriver    Edge    executable_path=/Users/coline/Documents/GR1/gr1_project/msedgedriver
    Open Browser    https://zoo.waw.pl    edge




    

