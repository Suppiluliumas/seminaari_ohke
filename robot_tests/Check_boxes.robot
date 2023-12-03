*** Settings ***
Library         OperatingSystem
Library         String
Library         RequestsLibrary
Library         SeleniumLibrary

Test Setup      Open checkboxes page


*** Variables ***
${Browser}      chrome
${Sleep}        5
${URL}          https://the-internet.herokuapp.com/checkboxes


*** Test Cases ***
Click checkbox 1 and checkbox 1,1 should be checked, 2 should be unchecked Test Case
    Click Element    //*[@id="checkboxes"]/input[1]
    Click Element    //*[@id="checkboxes"]/input[2]
    Checkbox Should Be Selected    //*[@id="checkboxes"]/input[1]
    Checkbox Should Not Be Selected    //*[@id="checkboxes"]/input[2]
    Close Browser

*** Keywords ***
Open checkboxes page
    Open Browser    ${URL}    ${Browser}
    Sleep    ${Sleep}
