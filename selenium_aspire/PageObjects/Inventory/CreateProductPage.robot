*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${SAVE_BTN}                     xpath://button[@accesskey="s"]
${DISCARD_BTN}                  xpath://button[@accesskey="j"]
${NAME_INPUT}                   xpath://input[@name="name"]
${PROD_TYPE_SELECT}             xpath://*[@name="type"]
${PROD_CATEG_SELECT}            xpath://*[@name="categ_id"]//input
${INT_REF_INPUT}                xpath://*[@name="default_code"]
${BARCODE_INPUT}                xpath://*[@name="barcode"]
${SALES_PRICE_INPUT}            xpath://*[@name="list_price"]//input
${COST_INPUT}                   xpath://*[@name="standard_price"]//input
${NOTE_INPUT}                   xpath://table//textarea[@name="description"]
${CAN_BE_SOLD_CHECKBOX}         xpath://div[@name="sale_ok"]//input
${CAN_BE_PURCHASE_CHECKBOX}     xpath://div[@name="purchase_ok"]//input

*** Keywords ***
Click Save Button
    Click Element    ${SAVE_BTN}

Click Discard Button
    Click Element    ${DISCARD_BTN}

Input Product Names
    [Arguments]   ${values}
    Wait Until Page Contains Element    ${NAME_INPUT}
    Input Text    ${NAME_INPUT}       ${values}

Select Can Be Sold Checkbox
    Select Checkbox    ${CAN_BE_SOLD_CHECKBOX}

Unselect Can Be Sold Checkbox
    Unselect Checkbox    ${CAN_BE_SOLD_CHECKBOX}

Select Can Be Purchase Checkbox
    Select Checkbox    ${CAN_BE_PURCHASE_CHECKBOX}

Unselect Can Be Purchase Checkbox
    Unselect Checkbox    ${CAN_BE_PURCHASE_CHECKBOX}

Input Internal Reference
    [Arguments]   ${values}
    Input Text    ${INT_REF_INPUT}    ${values}

Input Barcode
    [Arguments]   ${values}
    ${random}=    Random Int
    Input Text    ${BARCODE_INPUT}    ${values}_${random}

Input Sales Price
    [Arguments]   ${values}
    Input Text    ${SALES_PRICE_INPUT}    ${values}

Input Cost
    [Arguments]   ${values}
    Input Text    ${COST_INPUT}    ${values}

Input Internal Note
    [Arguments]   ${values}
    Input Text    ${NOTE_INPUT}    ${values}

Select Value From Prod Type Dropdown
    ###----------------------------------------------------------------------------------------------------------###
    [Documentation]   Selects a value from the dropdown list using the ``dropdownValue`` provided
    ###----------------------------------------------------------------------------------------------------------###
    [Arguments]   ${dropdownValue}
    Click Element    ${PROD_TYPE_SELECT}
    Click Element    //select//*[text()[contains(., "${dropdownValue}")]]
