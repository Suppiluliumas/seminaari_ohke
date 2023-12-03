*** Settings ***
Library         OperatingSystem
Library         String
Library         RequestsLibrary
Library         SeleniumLibrary

Test Setup      Open drag_and_drop page


*** Variables ***
${Browser}      chrome
${Sleep}        5
${URL}          https://the-internet.herokuapp.com/drag_and_drop


*** Test Cases ***
Drag A to B, they should switch places Test Case
    Element Text Should Be    //*[@id="column-a"]/header    A
    Element Text Should Be    //*[@id="column-b"]/header    B
    Drag And Drop    //*[@id="column-a"]    //*[@id="column-b"]
    Element Text Should Be    //*[@id="column-a"]/header    B
    Element Text Should Be    //*[@id="column-b"]/header    A
    Close Browser
Drag B to A, they should switch places Test Case
    Element Text Should Be    //*[@id="column-a"]/header    A
    Element Text Should Be    //*[@id="column-b"]/header    B
    Drag And Drop    //*[@id="column-b"]    //*[@id="column-a"]
    Element Text Should Be    //*[@id="column-a"]/header    B
    Element Text Should Be    //*[@id="column-b"]/header    A
    Close Browser
Drag A to page footer, A and B should be the same Test Case
    Element Text Should Be    //*[@id="column-a"]/header    A
    Element Text Should Be    //*[@id="column-b"]/header    B
    Drag And Drop    //*[@id="column-a"]    //*[@id="page-footer"]
    Element Text Should Be    //*[@id="column-a"]/header    A
    Element Text Should Be    //*[@id="column-b"]/header    B
    Close Browser
*** Keywords ***
Open drag_and_drop page
    Open Browser    ${URL}    ${Browser}
