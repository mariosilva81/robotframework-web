*** Settings ***

Library                             SeleniumLibrary


*** Variables ***

${URL}                              https://automationpratice.com.br/
${BROWSER}                          chrome


*** Keywords ***

Open website
    Open Browser                    ${URL}             ${BROWSER}
    Wait for page to load           2s

Wait for page to load
    [Arguments]                     ${time}
    Set Selenium Implicit Wait      ${time}

Click button
    [Arguments]                     ${LOCATOR}
    Click Element                   ${LOCATOR}
    Wait for page to load           2s

Enter input data
    [Arguments]                     ${LOCATOR}         ${USER_DATA}
    Input Text                      ${LOCATOR}         ${USER_DATA}

Validate text
    [Arguments]                     ${LOCATOR}         ${TEXT}
    ${actual_text}                  Get Text           ${LOCATOR}
    Should Be Equal As Strings      ${actual_text}     ${TEXT}
    Wait for page to load           2s

Screenshot
    [Arguments]                     ${SCENARIO}
    Capture Page Screenshot         ${EXECDIR}/reports/screenshots/${SCENARIO}_{index:03}.png
