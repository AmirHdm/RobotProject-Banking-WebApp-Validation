*** Settings ***
Documentation    Testing a banking software for two roles : Manager + Costumer
Library    SeleniumLibrary
Variables    D:/RobotFramework/PROJECTS/BANKING/Packages/Cred.py
Resource    ../BANKING/Resources/Login.resource


*** Test Cases ***
Test GET LOGIN
    [Timeout]    15s
    OPEN SPECIFIC WEB PAGE      ${login_page_url}    ${browser_firefox}
    VERIFY WEB PAGE     ${login_page_title}     ${login_page_url}       ${login_page_resetbtn}
TEST ACCESS
    [Timeout]    8s
    LOGIN WEB PAGE   ${user_id}        ${user_password}
    VERIFY WEB PAGE    ${home_page_title}       ${home_page_url}        ${home_page_managerbtn}
    CLOSE BROWSER





*** Keywords ***
OPEN SPECIFIC WEB PAGE
    [Arguments]     ${login_url}    ${browser}
    open browser    ${login_url}    browser=${browser}[var1]    alias=${browser}[var2]      executable_path=${browser}[var3]

VERIFY WEB PAGE
    [Arguments]        ${page_title}      ${page_url}     ${verification_element}
    title should be     ${page_title}       WRONG TITLE = WRONG PAGE
    location should be      ${page_url}     WRONG URL = WRONG PAGE
    element should be visible   ${verification_element}      Element is visible

LOGIN WEB PAGE
    [Arguments]      ${username}         ${userpwd}
    seleniumlibrary.input text    name=uid      ${username}
    seleniumlibrary.input text    name=password      ${userpwd}
    seleniumlibrary.click button  name=btnLogin
    BUILTIN.SLEEP    2


