*** Settings ***
Library    SeleniumLibrary
Variables   ../Resources/Demoblaze_locators.yaml

*** Variables ***
${DEMOBLAZE_URL}        https://www.demoblaze.com/index.html
${BROWSER}              gc

*** Keywords ***
Open Browser With Google Chrome
    Open Browser    url=${DEMOBLAZE_URL}     browser=${BROWSER}
    Maximize Browser Window


Verify Demoblaze Logo Appears
    Element Should Be Visible        ${Logo}


Verify Top Menu Appears
    Element Should Be Visible        ${TopMenu}

Verify Banner Appears
    Element Should Be Visible        ${Banner}

verify Produk
    Wait Until Element Is Visible    ${Produk}
    Element Should Be Visible        ${Produk}


Click Tombol Login Homepage
    Click Element                    ${TombolLoginHomePage}

login popup visible
    Wait Until Element Is Visible    ${UserName}
Input Username
    Input Text                       ${UserName}           text=test4567

Input Password
    Input Text                      ${Password}            text=test

Click Login popup
    Click Element                   ${TombolLoginPopUp}

Close Google Chrome Browser
    Close Browser
