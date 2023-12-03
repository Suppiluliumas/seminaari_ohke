*** Settings ***
Library     OperatingSystem
Library     String
Library     RequestsLibrary
Library     Browser
Library     SeleniumLibrary


*** Variables ***
${Browser}          chromium
${Sleep}            5
${username}=        admin
${pwd}=             admin
${URL1}             https://the-internet.herokuapp.com/basic_auth
${URL2}             https://${username}:${pwd}@the-internet.herokuapp.com/basic_auth



*** Test Cases ***
Correct auth Test Case
    Browser.Open Browser    ${URL2}    browser=${Browser}
    ${page_source}    Get Page Source
    Sleep    ${Sleep}
    Should Contain    ${page_source}    Congratulations! You must have the proper credentials.
    Browser.Close Browser
