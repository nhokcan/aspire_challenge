*** Settings ***
Library     OperatingSystem
Library     SeleniumLibrary
Library     FakerLibrary
Resource    ${EXECDIR}/selenium_aspire/Data/TestData.robot

Suite Setup     Open Browser to the Login Page
Test Setup      Login With Valid Credentials
Suite Teardown  Close All Browsers

*** Test Cases ***
Verify Create Manufacturing Successfully
    [tags]    aspire_challenge
    Navigate to Inventory
    Wait Until Page Contains    Products
    Navigate to Product Menu
    Navigate to Sub Product Menu
    Create Product
    Click Application Icon
    Navigate to Manufacturing
    Create Manufacturing

    # Validate Order after create
    ${currentDate}=   Get Current Date Picker
    ${Order_Infor_Expected}=   Create List    [${interalRef}] ${productName}
    ...                                       ${PROD_SUMMARY}[Qty]
    ...                                       ${currentDate}
    ...                                       ${EMPTY}
    ...                                       ${USER_NAME}
    ${Order_Infor_Actual}=   Get Manufacturing Values
    Lists Should Be Equal    ${Order_Infor_Expected}    ${Order_Infor_Actual}

*** Keywords ***
Login With Valid Credentials
    Enter Username    ${VALID_USER}
    Enter Password    ${VALID_PASSWORD}
    Click Log In Button
    Wait Until Page Contains Element    ${USER_BTN}
    Verify Login successfully

Create Product
    ${randomName}=   Word
    ${randomRef}=   Random Number
    Set Test Variable    ${productName}     ${PROD_SUMMARY}[Product_Name] ${randomName}
    Set Test Variable    ${interalRef}      ${PROD_SUMMARY}[Internal_Reference] ${randomRef}
    Click Create Button
    Input Product Names                     ${productName}
    Select Value From Prod Type Dropdown    Consumable
    Input Internal Reference                ${interalRef}
    Input Barcode                           ${PROD_SUMMARY}[Barcode]
    Input Sales Price                       ${PROD_SUMMARY}[Sales_Price]
    Input Cost                              ${PROD_SUMMARY}[Cost]
    Input Internal Note                     ${PROD_SUMMARY}[Internal_Note]
    CreateProductPage.Click Save Button

Create Manufacturing
    Click Create Manufacturing Button
    Select Prod Name    [${interalRef}] ${productName}
    Input Quantity      ${PROD_SUMMARY}[Qty]
    CreateManufacturingPage.Click Save Button

Verify Login successfully
    Page Should Contain    Discuss
    Page Should Contain    Inventory
    Page Should Contain    Manufacturing

Verify Navigate To Inventory Menu Successfully
    Page Should Contain    Inventory Overview
