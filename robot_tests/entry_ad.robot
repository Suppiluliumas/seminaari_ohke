*** Settings ***
Library     OperatingSystem
Library     String
Library     RequestsLibrary
Library     SeleniumLibrary


*** Variables ***
${Browser}      chrome
${Sleep}        5
${URL}          https://the-internet.herokuapp.com/entry_ad


*** Test Cases ***
First page load should display ad, after reloading page, ad should not display Test Case
    Open Browser    ${URL}    ${Browser}
    Sleep    ${Sleep}
    ${display_style}    Get Element Attribute    //*[@id="modal"]    style
    Should Be Equal    display: block;    ${display_style}
    Click Element    //*[@id="modal"]/div[2]/div[3]/p
    Sleep    ${Sleep}
    ${display_style}    Get Element Attribute    //*[@id="modal"]    style
    Should Be Equal    display: none;    ${display_style}
    Reload Page
    ${display_style}    Get Element Attribute    //*[@id="modal"]    style
    Should Be Equal    display: none;    ${display_style}

Re-enable button function Test Case
    First page load should display ad, after reloading page, ad should not display Test Case
    ${display_style}    Get Element Attribute    //*[@id="modal"]    style
    Should Be Equal    display: none;    ${display_style}
    WHILE    'display: none;'=='//*[@id="modal"]'
        Click Element    //*[@id="restart-ad"]
        Should Be Equal    display: block;    ${display_style}
    END


*** Keywords ***
First page load should display ad, after reloading page, ad should not display Test Case
    Open Browser    ${URL}    ${Browser}
    Sleep    ${Sleep}
    ${display_style}    Get Element Attribute    //*[@id="modal"]    style
    ${display_style}    Should Match    display: block;    display: block;
    Click Element    //*[@id="modal"]/div[2]/div[3]/p
    Sleep    ${Sleep}
    ${display_style}    Get Element Attribute    //*[@id="modal"]    style
    ${display_style}    Should Match    display: none;    display: none;
    Reload Page
    ${display_style}    Should Match    display: none;    display: none;
