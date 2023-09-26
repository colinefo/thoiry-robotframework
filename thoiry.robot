*** Settings ***    

Library         SeleniumLibrary  


*** Variables ***



*** Test Cases ***

Social media instagram
    Open the mainpage
    Scroll To Footer
    Sleep    1s
    Click Element    xpath=//html/body/div[2]/div[2]/div[4]/div/div/a[3]
    Sleep    1s
    ${handles} =    Get Window Handles
    Switch Window    ${handles[1]}   
    ${new_tab_url} =    Get Location
    Should Be Equal As Strings    ${new_tab_url}    https://www.instagram.com/zoo_warszawa/?hl=pl
    Close Window
    Switch Window    ${handles[0]}
    [Teardown]    Close Browser
Social media facebook
    Open the mainpage
    Scroll To Footer
    Sleep    1s
    Click Link    xpath=/html/body/div[2]/div[2]/div[4]/div/div/a[1]
    Sleep    1s
    ${handles} =    Get Window Handles
    Switch Window    ${handles[1]}   
    ${new_tab_url} =    Get Location
    Should Be Equal As Strings    ${new_tab_url}    https://www.facebook.com/WarszawskieZOO/
    Close Window
    Switch Window    ${handles[0]}
    [Teardown]    Close Browser
Social media tripadvisor
    Open the mainpage
    Scroll To Footer
    Sleep    1s
    Click Link    xpath=/html/body/div[2]/div[2]/div[4]/div/div/a[4]
    Sleep    1s
    ${handles} =    Get Window Handles
    Switch Window    ${handles[1]}   
    ${new_tab_url} =    Get Location
    Should Be Equal As Strings    ${new_tab_url}    https://www.tripadvisor.com/Attraction_Review-g274856-d588540-Reviews-Miejski_Ogrod_Zoologiczny_w_Warszawie-Warsaw_Mazovia_Province_Central_Poland.html
    Close Window
    Switch Window    ${handles[0]}
    [Teardown]    Close Browser

*** Keywords ***
Open the mainpage
    create Webdriver    Edge    executable_path=/Users/coline/Documents/GR1/gr1_project/msedgedriver
    Open Browser    https://zoo.waw.pl    edge
    

Scroll To Footer
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight);
