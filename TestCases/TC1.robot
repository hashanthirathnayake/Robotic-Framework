*** Settings ***

Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
    open browser  ${url}  ${browser}
    LoginToApplication
    close browser


*** Keywords ***
LoginToApplication
    click link  xpath://a[contains(text(),'Log in')]
    input text  id:Email  hashanthirathnayake@gmail.com
    input text  id:Password  Test@123
    click element   xpath://button[contains(text(),'Log in')]



