*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary

*** Variables ***
${NAME}                   xpath://span[@placeholder="Product Name"]
${PROD_TYPE}              xpath://span[@name="type"]
${PROD_CATEG}             xpath://a[@name="categ_id"]//span
${INT_REF}                xpath://span[@name="default_code"]
${BARCODE}                xpath://span[@name="barcode"]
${SALES_PRICE}            xpath://span[@name="list_price"]
${COST}                   xpath://span[@name="standard_price"]
${NOTE}                   xpath://table//textarea[@name="description"]
${CAN_BE_SOLD}            xpath://*[@name="sale_ok"]
${CAN_BE_PURCHASE}        xpath://*[@name="purchase_ok"]

*** Keywords ***
# Field Label
# Get Actual Field Label
#     [Arguments]   ${locator}
#     Wait Until Page Contains Element    ${locator}
#     ${act_label}=   Get Text    ${locator}/ancestor::tr//label
#     Log To Console    ${act_label}
#
# Get Actual Field Values
#     [Arguments]   ${locator}
#     Wait Until Page Contains Element    ${locator}
#     ${act_label}=   Get Text    ${locator}
#     Log To Console    ${act_label}

Get Product Field Labels
    Get Actual Field Label    ${PROD_TYPE}
    Get Actual Field Label    ${PROD_CATEG}
    Get Actual Field Label    ${INT_REF}
    Get Actual Field Label    ${BARCODE}
    Get Actual Field Label    ${SALES_PRICE}
    Get Actual Field Label    ${COST}

Get Product Values
    Get Actual Field Values    ${PROD_TYPE}
    Get Actual Field Values    ${PROD_CATEG}
    Get Actual Field Values    ${INT_REF}
    Get Actual Field Values    ${BARCODE}
    Get Actual Field Values    ${SALES_PRICE}
    Get Actual Field Values    ${COST}
