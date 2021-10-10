*** Settings ***
Documentation    Login Functionality
Resource    ../Resources/CommonFunctionalities.robot
Resource    ../Resources/UserKeywors.robot

Suite Setup    Starting Browser and Maximize
Suite Teardown    Closing Browser
*** Variables ***

*** Test Cases ***
Verify the Login Page
    Go to the login page
    Location Should Be  ${URL_LoginPage}

Verify Login Fails - Wrong Username
    Go to the login page
    Input Text    ${TxtBox_Username}    Abd
    Input Text    ${TxtBox_Password}    abc
    Click Button    ${Btn_Login}
    Page Should Contain  ${login_error_msg}

Verify Login Fails - Wrong Password
    Go to the login page
    Input Text    ${TxtBox_Username}    1
    Input Text    ${TxtBox_Password}    232
    Click Button    ${Btn_Login}
    Page Should Contain  ${login_error_msg}

Verify Login Fails - Wrong Username and wrong Password
    Go to the login page
    Input Text    ${TxtBox_Username}    132
    Input Text    ${TxtBox_Password}    232
    Click Button    ${Btn_Login}
    Page Should Contain  ${login_error_msg}


Verify Login Fails - Blank Username
    Go to the login page
#    Input Text    ${TxtBox_Username}
    Input Text    ${TxtBox_Password}    abc
    Click Button    ${Btn_Login}
    Location Should Be  ${URL_LoginPage}

Verify Login Fails - Blank Password
    Go to the login page
    Input Text    ${TxtBox_Username}    1
#    Input Text    ${TxtBox_Password}    abc
    Click Button    ${Btn_Login}
    Location Should Be  ${URL_LoginPage}

Verify Login Fails - Blank username and blank Password
    Go to the login page
#    Input Text    ${TxtBox_Username}    1
#    Input Text    ${TxtBox_Password}    abc
    Click Button    ${Btn_Login}
    Location Should Be  ${URL_LoginPage}

Verify Login Fails - valid credential
    Go to the login page
    Input Text    ${TxtBox_Username}    1
    Input Text    ${TxtBox_Password}    1
    Click Button    ${Btn_Login}
    Location Should Be  http://localhost:8080/user
    Close Browser
