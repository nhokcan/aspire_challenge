*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${USER_BTN}                 xpath://*[@role="button"]
${MENU_DISCUSS}             xpath://a[@data-menu-xmlid="mail.menu_root_discuss"]
${MENU_INVENTOTY}           xpath://a[@data-menu-xmlid="stock.menu_stock_root"]
${MENU_MANUFACTURING}       xpath://a[@data-menu-xmlid="mrp.menu_mrp_root"]
${APPLICATION_ICON}         xpath://*[@title="Applications"]

*** Keywords ***
Navigate to Discuss
    Click Element    ${MENU_DISCUSS}

Navigate to Inventory
    Click Element    ${MENU_INVENTOTY}

Navigate to Manufacturing
    Wait Until Page Contains Element    ${MENU_MANUFACTURING}
    Click Element    ${MENU_MANUFACTURING}

Click Application Icon
    Click Element    ${APPLICATION_ICON}
