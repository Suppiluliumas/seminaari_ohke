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
    Should Match    display: block;    ${display_style}    
    Click Element    //*[@id="modal"]/div[2]/div[3]/p
    Sleep    ${Sleep}
    ${display_style}    Get Element Attribute    //*[@id="modal"]    style
    Should Match    display: none;    ${display_style}
    Reload Page
    ${display_style}    Get Element Attribute    //*[@id="modal"]    style
    Should Match    display: none;    ${display_style} 
    Close Browser
Re-enable button function Test Case
    First page load should display ad, after reloading page, ad should not display Test Case
    ${display_style}    Get Element Attribute    //*[@id="modal"]    style
    Should Match    display: none;    ${display_style}
    Click Element    //*[@id="restart-ad"]
    ${display_style}    Get Element Attribute    //*[@id="modal"]    style
    Should Match    display: none;    ${display_style}
    Close Browser

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
