*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://localhost:8080/
${Browser}    Chrome

*** Keywords ***
Starting Browser and Maximize
    [Documentation]    This test case verifies the basic functionalies of login
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window

Closing Browser
    Close Browser
