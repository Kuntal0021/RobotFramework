*** Settings ***
Documentation    This page is for testing

Library    SeleniumLibrary
Library    Collections
Library    String

*** Variables ***
${Username}                 username
${Password}                 password
${User_Types}               radio
${User_Value}               user
${Okay_Option}              okayBtn
${Type_Of_User}             //select[@class="form-control"]
${TnC}                      terms
${SignIn}                   signInBtn
${Error}                    //div[@class="alert alert-danger col-md-12"]
${Card_Titles_Locators}     //h4[@class="card-title"]/a
${Pop_up}                   //*[@class="modal-content"]
${Free_Access}              Free Access to InterviewQues/ResumeAssistance/Material
${Email_Text}               //p[@class="im-para red"]

*** Keywords ***
Login To RahulShetty
    [Documentation]    Keyword used for Login
    [Arguments]    ${uname}     ${pword}    ${Error_Message_Displayed}
    SeleniumLibrary.input text    ${Username}    ${uname}
    SeleniumLibrary.input password    ${Password}   ${pword}
    SeleniumLibrary.select checkbox    ${TnC}
    SeleniumLibrary.click button    ${SignIn}
    ${bool}     run keyword and return status    Capture Error Message     ${Error_Message_Displayed}
    run keyword if    ${bool}   Log    Unsuccessful Login
    ...    ELSE    Log    Successful Login

Capture Error Message
    [Documentation]     This Keyword will capture Error Message
    [Arguments]    ${Error_Message_Displayed}
    wait until element is visible    ${Error}   3
    ${Error_Message}    seleniumlibrary.get text    ${Error}
    should be equal as strings     ${Error_Message}    ${Error_Message_Displayed}
    log    ${Error_Message}

Validate Card Titles
    [Documentation]    This Keyword will validate Card Titles
    [Arguments]    @{Card_Titles}
    ${Locators}     Get WebElements      ${Card_Titles_Locators}
#    FOR    ${CTL}    IN     @{Card_Titles}
##        ${new_text}    get text    ${CT}
#        log    ${CTL}
#    END
    FOR    ${CT}    ${CTL}    IN ZIP    ${Card_Titles}    ${Locators}
        Log     ${CTL.text}
        element text should be    ${CTL}    ${CT}
    END

Validate Card Titles Using Collections
    [Documentation]    This Keyword will validate Card Titles Using Collections
    [Arguments]    @{Card_Titles}
    ${Locators}     Get WebElements      ${Card_Titles_Locators}
    @{Locator_text}    Create List
    FOR    ${CTL}    IN    @{Locators}
        Log     ${CTL.text}
        append to list    ${Locator_text}     ${CTL.text}
    END
    lists should be equal    ${Locator_text}     ${Card_Titles}

Add TO Cart Using Collections
    [Documentation]    This Keyword will validate Card Titles Using Collections
    [Arguments]    ${Product}
    ${Locators}     Get WebElements      ${Card_Titles_Locators}
    ${index}    Set Variable     1
    FOR    ${CTL}    IN    @{Locators}
        exit for loop if    '${Product}' == '${CTL.text}'
        ${index}    evaluate    ${index} + 1
    END
    Click Button    (//*[@class="btn btn-info"])[${index}]

Login To RahulShetty As User
    [Documentation]    Keyword used for Login
    [Arguments]    ${uname}     ${pword}    ${UserType}    ${Error_Message_Displayed}
    SeleniumLibrary.input text    ${Username}    ${uname}
    SeleniumLibrary.input password    ${Password}   ${pword}
    SeleniumLibrary.select checkbox    ${TnC}
    SeleniumLibrary.select radio button    ${User_Types}      ${User_Value}
    SeleniumLibrary.wait until element is visible    ${Pop_up}    3
    SeleniumLibrary.click button    ${Okay_Option}
    SeleniumLibrary.select from list by label    ${Type_Of_User}     ${UserType}
    SeleniumLibrary.click button    ${SignIn}
    ${bool}     run keyword and return status    Capture Error Message     ${Error_Message_Displayed}
    run keyword if    ${bool}   Log    Unsuccessful Login
    ...    ELSE    Log    Successful Login

Navigate to Free Acccess Link
    [Documentation]    Keyword used for moving to Free Access Link
    SeleniumLibrary.click link    ${Free_Access}
    SeleniumLibrary.Switch Window     new
    ${Get_Text}    SeleniumLibrary.get text     ${Email_Text}
    @{Split_text}     String.split string    ${Get_Text}     ${SPACE}
    ${email}        Collections.get from list    ${Split_text}     4
    SeleniumLibrary.Switch Window    main
    SeleniumLibrary.input text    ${Username}    ${email}
    sleep    3s



