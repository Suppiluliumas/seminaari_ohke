*** Settings ***
Library         OperatingSystem
Library         String
Library         RequestsLibrary
Library         SeleniumLibrary
Library         XML

Test Setup      Open dropdown page


*** Variables ***
${Browser}      chrome
${Sleep}        5
${URL}          https://the-internet.herokuapp.com/dropdown


*** Test Cases ***
Choose item 1 and item1 element should have attribute selected, item 2 element shouldnt have attribute Test Case
    Click Element    //*[@id="dropdown"]
    Sleep    ${Sleep}
    Select From List By Value    //*[@id="dropdown"]    1
    Element Attribute Value Should Be    //*[@id="dropdown"]/option[2]    selected    true
    ${attribute_value}    Get Element Attribute    //*[@id="dropdown"]/option[3]    selected
    IF    "${attribute_value}" != "None"
        Fail    Element attribute should not be present
    END
    Close Browser

*** Keywords ***
Open dropdown page
    Open Browser    ${URL}    ${Browser}
    Sleep    ${Sleep}
