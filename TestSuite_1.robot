*** Settings ***
Documentation    Testing a banking software for two roles : Manager + Costumer
Library    SeleniumLibrary
Variables    D:/RobotFramework/PROJECTS/BANKING/Packages/Cred.py
Resource    ../BANKING/Resources/Login.resource
*** Variables ***

*** Test Cases ***
Test GET LOGIN
    OPEN SPECIFIC WEB PAGE      ${login_page_url}    ${browser_firefox}      ${login_page_resetbtn}    ${login_page_title}
TEST ACCESS
    seleniumlibrary.input text    name=uid      ${user_id}
    seleniumlibrary.input text    name=password      ${password}
    seleniumlibrary.click button  name=btnLogin
    BUILTIN.SLEEP    2
    wait until location is      ${home_page_url}
    TITLE SHOULD BE    ${home_page_title}   WRONG TITLE = WRONG PAGE
    CLOSE BROWSER

*** Keywords ***
OPEN SPECIFIC WEB PAGE
    [Arguments]     ${arg_login_url}    ${arg_browser}      ${arg_verification_login_page}      ${arg_login_page_title}
    open browser    ${arg_login_url}    browser=${arg_browser}[var1]    alias=${arg_browser}[var2]      executable_path=${arg_browser}[var3]
    title should be     ${arg_login_page_title}       WRONG TITLE = WRONG PAGE
    element should be visible   ${arg_verification_login_page}      Element is visible




