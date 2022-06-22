*** Settings ***
Documentation    This page is for testing

Resource    ../Resources/Resources.robot

Test Setup     Run Keywords     Open Browser    https://rahulshettyacademy.com/loginpagePractise/     chrome
               ...     AND      maximize browser window
Test Teardown    Close All Browsers

*** Variables ***
${User}         rahulshettyacademy
${Pass}         learning
${WPass}        Learning
${Success}      Success
${Failure}      Incorrect username/password.
@{Items}        iphone X    Samsung Note 8      Nokia      Blackberry
${Item}         Blackberry
${User_Type}    Teacher

*** Test Cases ***
Validate Login
    [Documentation]    Test Case for Login
    [Tags]    SmokeDemo
    Login To RahulShetty    ${User}     ${Pass}     ${Success}
    Validate Card Titles    @{Items}

Validate Login As A User
    [Documentation]    Test Case for Login
    [Tags]    SmokeDemo2
    Login To RahulShetty As User    ${User}     ${Pass}     ${User_Type}    ${Success}

Validate Login Collections
    [Documentation]    Test Case for Login
    [Tags]    SmokeDemos
    Login To RahulShetty    ${User}     ${Pass}     ${Success}
    Validate Card Titles Using Collections    @{Items}

Validate Unsuccessful Login
    [Documentation]    Test Case for Login
    [Tags]    SmokeDemo
    Login To RahulShetty    ${User}     ${WPass}    ${Failure}

Add TO Cart
    [Documentation]    Test Case for Login
    [Tags]    SmokeDemos
    Login To RahulShetty    ${User}     ${Pass}     ${Success}
    Add TO Cart Using Collections    ${Item}
