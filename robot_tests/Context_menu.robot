*** Settings ***
Library         OperatingSystem
Library         String
Library         RequestsLibrary
Library         SeleniumLibrary

Test Setup      Open context_menu page


*** Variables ***
${Browser}      chrome
${Sleep}        5
${URL}          https://the-internet.herokuapp.com/context_menu


*** Test Cases ***
Right click hotbox and popup should open Test Case
    Open Context Menu    //*[@id="hot-spot"]
    Sleep    ${Sleep}
    Alert Should Be Present    text=You selected a context menu
    Sleep    2
    Close Browser

Left click hotbox and popup should not open Test Case
    Click Element    //*[@id="hot-spot"]
    Sleep    ${Sleep}
    Alert Should Not Be Present
    Close Browser


*** Keywords ***
Open context_menu page
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Sleep    ${Sleep}
