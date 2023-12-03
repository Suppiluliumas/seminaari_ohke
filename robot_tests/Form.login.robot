*** Settings ***
Library     OperatingSystem
Library     String
Library     RequestsLibrary
Library     SeleniumLibrary


*** Variables ***
${Browser}      chrome
${Sleep}        5
${URL}          https://the-internet.herokuapp.com/login
${User}         tomsmith
${Pwd}          SuperSecretPassword!


*** Test Cases ***
Login correct auth Test Case
    Open page
    Input Text    //*[@id="username"]    ${User}
    Input Password    //*[@id="password"]    ${Pwd}
    Sleep    ${Sleep}
    Click Element    //*[@id="login"]/button
    Page Should Contain    Welcome to the Secure Area. When you are done click logout below.
    Close Browser

Logout button function works correctly, goes login page Test Case
    Login correct auth Test Case
    Sleep    ${Sleep}
    Click Element    //*[@id="content"]/div/a
    Element Should Contain    //*[@id="flash"]    You logged out of the secure area!
    Close Browser

Login with incorrect username, should have "Your username is invalid" message Test Case
    Open page
    Input Text    //*[@id="username"]    FALSE
    Input Password    //*[@id="password"]    ${Pwd}
    Click Element    //*[@id="login"]/button
    Element Should Contain    //*[@id="flash"]    Your username is invalid!
    Close Browser

Login with incorrect password, should have "Your password is invalid" message Test Case
    Open page
    Input Text    //*[@id="username"]    ${User}
    Input Password    //*[@id="password"]    False
    Click Element    //*[@id="login"]/button
    Element Should Contain    //*[@id="flash"]    Your password is invalid!
    Close Browser


*** Keywords ***
Open page
    Open Browser    ${URL}    ${Browser}
    Sleep    ${Sleep}

Login correct auth Test Case
    Open page
    Input Text    //*[@id="username"]    ${User}
    Input Password    //*[@id="password"]    ${Pwd}
    Sleep    ${Sleep}
    Click Element    //*[@id="login"]/button
    Page Should Contain    Welcome to the Secure Area. When you are done click logout below.
