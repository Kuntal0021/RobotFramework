*** Settings ***
Documentation    This page is for testing

Resource    ../Resources/Resources.robot

Test Setup     Run Keywords     Open Browser    https://rahulshettyacademy.com/loginpagePractise/     chrome
               ...     AND      maximize browser window
Test Teardown    Close All Browsers

*** Variables ***
${New_Variable}     New Variable
${Local1}           Local 1


*** Test Cases ***
Navigate to Free Access Link in Rahul Shetty
    [Documentation]    This will navigate to Free Access Link
    [Tags]    SmokeDemo3
    Navigate to Free Acccess Link
