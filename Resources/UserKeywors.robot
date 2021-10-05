*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#HobePage variables
${Link_Register}    xpath:/html/body/nav/ul/li[1]/a
${Link_Login}    xpath:/html/body/nav/ul/li[2]/a
#LoginPage and Register Variables
${URL_LoginPage}    http://localhost:8080/login
${URL_register}    http://localhost:8080/register
${TxtBox_Username}    id:username
${TxtBox_Password}    id:password
${Btn_Login}    xpath:/html/body/section/form/input[3]
${Btn_Register}    xpath:/html/body/section/form/input[6]
${login_error_msg}    You provided incorrect login details


*** Keywords ***
Go to the login page
    Click Link    ${Link_Login}
Go to the register page
    Click Link    ${Link_Register}