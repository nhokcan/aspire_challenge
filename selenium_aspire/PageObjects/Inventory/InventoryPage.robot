*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${MENU_INV_OVERVIEW}                xpath://a[@data-menu-xmlid="stock.stock_picking_type_menu"]
${MENU_INV_OPERATION}               xpath://a[@data-menu-xmlid="stock.menu_stock_warehouse_mgmt"]
${MENU_INV_PRODUCTS}                xpath://a[@data-menu-xmlid="stock.menu_stock_inventory_control"]
${MENU_INV_REPORTING}               xpath://a[@data-menu-xmlid="stock.menu_warehouse_report"]
${MENU_INV_CONFIGURATION}           xpath://a[@data-menu-xmlid="stock.menu_stock_config_settings"]


# sub menu
${SUB_MENU_PRD_PRODUCTS}            xpath://a[@data-menu-xmlid="stock.menu_product_variant_config_stock"]
${SUB_MENU_PRD_PRODUCTS_LABEL}      xpath://span[]

# button
${CREATE_BTN}                     xpath://button[@accesskey="c"]

*** Keywords ***
Navigate to Product Menu
    Click Element    ${MENU_INV_PRODUCTS}

Navigate to Sub Product Menu
    Click Element    ${SUB_MENU_PRD_PRODUCTS}

Click Create Button
    Wait Until Page Contains Element    ${CREATE_BTN}
    Click Element    ${CREATE_BTN}

Verify Sub Menu Labels
    [Arguments]   ${exp_sub_menu_text}
    ${text}=    Get Text    ${SUB_MENU_PRD_PRODUCTS}//span
    Should Be Equal    ${text}    ${exp_sub_menu_text}
