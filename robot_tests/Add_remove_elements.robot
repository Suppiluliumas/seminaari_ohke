*** Settings ***
Library         SeleniumLibrary
Library         OperatingSystem
Library         String
Library         Collections

Test Setup      Open add_remove_elements page


*** Variables ***
${Browser}      Chrome
${Sleep}        5
${URL1}         https://the-internet.herokuapp.com/add_remove_elements/


*** Test Cases ***
Adding 1 element Test Case
    Sleep    ${Sleep}
    Click Button    //*[@id="content"]/div/button
    Page Should Contain    Delete
    Close Browser
Deleting 1 element Test Case
    Sleep    ${Sleep}
    Click Button    //*[@id="content"]/div/button
    Page Should Contain    Delete
    Sleep    ${Sleep}
    Click Button    //*[@id="elements"]/button
    Sleep    ${Sleep}
    Page Should Not Contain    //*[@id="elements"]/button
    Close Browser

*** Keywords ***
Open add_remove_elements page
    Open Browser    ${URL1}    ${Browser}
