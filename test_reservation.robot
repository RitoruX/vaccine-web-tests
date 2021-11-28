*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library         SeleniumLibrary

*** Variables ***
# variable names can contain spaces
${URL}          https://vaccine-haven.herokuapp.com/
${BROWSER}      Firefox
${CITIZEN_ID}   9621054598051
${SITE_NAME}    OGYHSite
${Vaccine}      Pfizer

*** Keywords ***
Open Application
    Set Selenium Speed      0.5 seconds
    Open Browser  ${URL}    ${BROWSER}
    Title Should Be         Vaccine Haven

Input Reservation Info
    Input Text                  id:citizen_id       ${CITIZEN_ID}
    Select From List By Value   id:site_name        ${SITENAME}
    Select From List By Value   id:vaccine_name     ${Vaccine}

Input Citizen ID Form
    Input Text              id:citizen_id       ${CITIZEN_ID}
    Click Button                                Submit

*** Test Cases ***
Test Nevigate the Homepage
    Open Application
    Page Should Contain    Registration
    Page Should Contain    Reservation
    [Teardown]             Close Browser

Test Create Reservation
    Open Application
    Click Button                                Reserve Vaccine
    Location Should Be                          ${URL}reservation
    Page Should Contain                         Vaccine Reservation
    Input Reservation Info               
    Click Button                                Submit
    Wait Until Element Is Visible               id:reserve__btn
    Click Element                               id:nav__info__link
    Input Citizen ID Form
    Page Should Contain                         ${CITIZEN_ID}
    [Teardown]                                  Close Browser

Test Delete Reservation
    Open Application
    Click Element                               id:nav__info__link
    Input Citizen ID Form
    Click Button                                Cancel
    Page Should Contain                         Citizen Page
    [Teardown]                                  Close Browser

