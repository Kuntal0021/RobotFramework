*** Settings ***
Documentation    This page is for testing

Library    SeleniumLibrary

Test Setup     Run Keywords     Open Browser    https://rahulshettyacademy.com/loginpagePractise/     chrome
               ...     AND      maximize browser window
Test Teardown    Close All Browsers

Test Template    Login To RahulShetty

*** Variables ***
${Username}         username
${Password}         password
${TnC}              terms
${SignIn}           signInBtn
${Error}            //div[@class="alert alert-danger col-md-12"]
${User}             rahulshettyacademy
${In_User}          Kuntal
${Pass}             learning
${WPass}            Learning
${Success}          Success
${Failure}          Incorrect username/password.
${EMPTY_Failure}    Empty username/password.
${New_Var}          New Variable


*** Keywords ***
Login To RahulShetty
    [Documentation]    Keyword used for Login
    [Arguments]    ${uname}     ${pword}    ${Error_Message_Displayed}
    SeleniumLibrary.input text    ${Username}    ${uname}
    SeleniumLibrary.input password    ${Password}   ${pword}
    SeleniumLibrary.select checkbox     ${TnC}
    SeleniumLibrary.cover element    ${SignIn}
    sleep    5s
    SeleniumLibrary.click button    ${SignIn}
    ${bool}     run keyword and return status    Capture Error Message     ${Error_Message_Displayed}
    run keyword if    ${bool}   Log    Unsuccessful Login
    ...    ELSE    Log    Successful Login

Capture Error Message
    [Documentation]     This Keyword will capture Error Message
    [Arguments]    ${Error_Message_Displayed}
    wait until element is visible    ${Error}   10
    ${Error_Message}    seleniumlibrary.get text    ${Error}
    should be equal as strings     ${Error_Message}    ${Error_Message_Displayed}
    log    ${Error_Message}

*** Test Cases ***      UserName        Password     Message
Invalid UserName        ${In_User}      ${Pass}     ${Failure}
Invalid Password        ${User}         ${WPass}    ${Failure}
Empty Username          ${EMPTY}        ${Pass}     ${EMPTY_Failure}
Empty Password          ${User}         ${EMPTY}    ${EMPTY_Failure}
Sucess Login            ${User}         ${Pass}    ${Success}



