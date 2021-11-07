*** Settings ***
Library    Collections
Resource    ${EXECDIR}/selenium_aspire/PageObjects/Common.robot
Resource    ${EXECDIR}/selenium_aspire/PageObjects/LoginPage.robot
Resource    ${EXECDIR}/selenium_aspire/PageObjects/HomePage.robot
Resource    ${EXECDIR}/selenium_aspire/PageObjects/Inventory/InventoryPage.robot
Resource    ${EXECDIR}/selenium_aspire/PageObjects/Inventory/CreateProductPage.robot
Resource    ${EXECDIR}/selenium_aspire/PageObjects/Inventory/ProductDetailPage.robot
Resource    ${EXECDIR}/selenium_aspire/PageObjects/Manufacturing/ManufacturingPage.robot
Resource    ${EXECDIR}/selenium_aspire/PageObjects/Manufacturing/CreateManufacturingPage.robot
Resource    ${EXECDIR}/selenium_aspire/PageObjects/Manufacturing/ManufacturingDetailPage.robot

*** Variables ***
${VALID_USER}           user@aspireapp.com
${VALID_PASSWORD}       @sp1r3app
${USER_NAME}            user
&{PROD_SUMMARY}         Product_Name=Aspire
...                     Internal_Reference=ref
...                     Barcode=XCHALLENGE
...                     Sales_Price=122
...                     Cost=78
...                     Internal_Note=Note for test 12345
...                     Qty=12.00
