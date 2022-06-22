*** Settings ***

Library     Collections
Library     RequestsLibrary

*** Variables ***
${Base_Url}       http://216.10.245.166
&{API_Data}       name=Learn Appium Automation with Java    isbn=bcd    aisle=227   author=John foe



*** Test Cases ***
Play Around With Dictionary
    [Tags]    Dict
    &{dict}    create dictionary    name=Kuntal    course=robot    desg=Lead Engineer
    log    ${dict}
    log    ${dict.name}
    log    ${dict}[course]
    @{Keys}     get dictionary keys    ${dict}
    FOR    ${x}    IN    @{Keys}
        log    ${dict.${x}}
    END

    @{items}    get dictionary items    ${dict}
    log    ${items}

Send Request For API
    [Documentation]    Sending Request to API
    [Tags]    API
    ${response}     POST    https://reqres.in/api/users    params=page=2     #${API_Data}     expected_status=200
    Log    ${response.json()}
    ${ID}     get from dictionary    ${response.json()}   id
    Log     ${ID}
    @{Keys}    get dictionary keys    ${response.json()}
    Log    ${Keys}

