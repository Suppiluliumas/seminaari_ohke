*** Settings ***
Library     OperatingSystem
Library     String
Library     RequestsLibrary
Library     SeleniumLibrary


*** Variables ***
${Browser}          chrome
${Sleep}            5
${username}=        admin
${pwd}=             admin
${URL1}             https://the-internet.herokuapp.com/basic_auth
${URL2}             https://${username}:${pwd}@the-internet.herokuapp.com/basic_auth



*** Test Cases ***
Correct auth Test Case
    Open Browser    ${URL2}    browser=${Browser}
    Sleep    ${Sleep}
    Page Should Contain  Congratulations! You must have the proper credentials.
    Close Browser
