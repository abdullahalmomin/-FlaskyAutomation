*** Settings ***
Documentation    Registration Page Functionality
Resource    ../Resources/CommonFunctionalities.robot
Resource    ../Resources/UserKeywors.robot

Suite Setup    Starting Browser and Maximize
Suite Teardown    Closing Browser

*** Variables ***
${UserName}    SH11


*** Test Cases ***
Create an User
    Go to the register page
    Location Should Be    ${URL_register}
    Input Text    id:username    ${UserName}
    Input Text    id:password    12
    Input Text    id:firstname    12
    Input Text    id:lastname    12
    Input Text    id:phone    12
    Click Button    ${Btn_Register}
    Go to the login page

Create Duplicate User
    Go to the register page
    Location Should Be    ${URL_register}
    Input Text    id:username    ${UserName}
    Input Text    id:password    12
    Input Text    id:firstname    12
    Input Text    id:lastname    12
    Input Text    id:phone    121
    Click Button    ${Btn_Register}
    Page Should Contain    is already registered.


Blank Username Submit
    Go to the register page
    Location Should Be    http://localhost:8080/register
#    Input Text    id:username    ${UserName}
    Input Text    id:password    12345678
    Input Text    id:firstname    Abdur
    Input Text    id:lastname    Rahim
    Input Text    id:phone    12345678
    Click Button    ${Btn_Register}
    Location Should Be    ${URL_register}


Blank Password Submit
    Go to the register page
    Location Should Be    http://localhost:8080/register
    Input Text    id:username    ${UserName}
#    Input Text    id:password    12345678
    Input Text    id:firstname    Abdur
    Input Text    id:lastname    Rahim
    Input Text    id:phone    12345678
    Click Button    ${Btn_Register}
    Location Should Be    ${URL_register}


Blank Firstname Submit
    Go to the register page
    Location Should Be    http://localhost:8080/register
    Input Text    id:username    ${UserName}
    Input Text    id:password    12345678
#    Input Text    id:firstname    Abdur
    Input Text    id:lastname    Rahim
    Input Text    id:phone    12345678
    Click Button    ${Btn_Register}
    Location Should Be    ${URL_register}

Blank Lastname Submit
    Go to the register page
    Location Should Be    http://localhost:8080/register
    Input Text    id:username    ${UserName}
    Input Text    id:password    12345678
    Input Text    id:firstname    Abdur
#    Input Text    id:lastname    Rahim
    Input Text    id:phone    12345678
    Click Button    ${Btn_Register}
    Location Should Be    ${URL_register}

Blank Phone Submit
    Go to the register page
    Location Should Be    http://localhost:8080/register
    Input Text    id:username    ${UserName}
    Input Text    id:password    12345678
    Input Text    id:firstname    Abdur
    Input Text    id:lastname    Rahim
#    Input Text    id:phone    12345678
    Click Button    ${Btn_Register}
    Location Should Be    ${URL_register}
