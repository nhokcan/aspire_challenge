*** Settings ***
Library     SeleniumLibrary
Library     DateTime

*** Variables ***
${SAVE_BTN}                     xpath://button[@accesskey="s"]
${DISCARD_BTN}                  xpath://button[@accesskey="j"]
${NAME_INPUT}                   xpath://input[@name="name"]
${PROD_NAME_SELECT}             xpath://*[@name="product_id"]
${SCHEDULE}                     xpath://*[@name="date_planned_start"]
${PROD_QTY}                     xpath://*[@name="product_qty"]

*** Keywords ***
Click Save Button
    Click Element    ${SAVE_BTN}

Click Discard Button
    Click Element    ${DISCARD_BTN}

Input Quantity
    [Arguments]     ${value}
    Input Text    ${PROD_QTY}    ${value}

Select Prod Name
    ###----------------------------------------------------------------------------------------------------------###
    [Documentation]   Selects a value from the dropdown list using the ``dropdownValue`` provided
    ###----------------------------------------------------------------------------------------------------------###
    [Arguments]   ${dropdownValue}
    Wait Until Page Contains    Confirm
    Input Text    ${PROD_NAME_SELECT}//input    ${dropdownValue}
    Wait Until Page Contains Element    //a[text()[contains(.,"${dropdownValue}")]]
    Press Keys     //a[text()[contains(.,"${dropdownValue}")]]    ENTER
