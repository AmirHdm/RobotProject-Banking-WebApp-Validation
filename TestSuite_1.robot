*** Settings ***
Documentation    Testing a banking software for two roles : Manager + Costumer
Library    SeleniumLibrary
*** Variables ***
${login_page}    https://www.demo.guru99.com/v4/
${user_id}      mngr507394
${password}     rUjyhUg
${home_page}    Guru99 Bank Manager HomePage
${login_page_resetbtn}  name=btnReset


*** Test Cases ***
Test LOGIN
    ${arg_url}=  set variable    ${login_page}
    ${arg_verification_login_page}=  set variable    ${login_page_resetbtn}
    OPEN SPECIFIC WEB PAGE      ${arg_url}      ${arg_verification_login_page}
TEST ACCESS
    seleniumlibrary.input text    name=uid      ${user_id}
    seleniumlibrary.input text    name=password      ${password}
    seleniumlibrary.click button  name=btnLogin
    BUILTIN.SLEEP    2
    wait until location is      https://www.demo.guru99.com/v4/manager/Managerhomepage.php
    TITLE SHOULD BE    Guru99 Bank Manager HomePage
    CLOSE BROWSER

*** Keywords ***
OPEN SPECIFIC WEB PAGE
    [Arguments]     ${arg_url}      ${arg_verification_login_page}
    open browser    ${arg_url}   alias=firefox
    title should be     Guru99 Bank Home Page        Wrong Web Page
    element should be visible   ${arg_verification_login_page}      Element is visible




