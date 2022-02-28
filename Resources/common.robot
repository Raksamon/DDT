*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://www.saucedemo.com/
${browser}  chrome
${txtbox_username}  //*[@id="user-name"]
${txtbox_password}  //*[@id="password"]
${btn_login}    //*[@id="login-button"]
${txt_error}    //*[@id="login_button_container"]/div/form/div[3]

*** Keywords ***
Start TestCase
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Sleep   2s

Finish TestCase
    Close Browser