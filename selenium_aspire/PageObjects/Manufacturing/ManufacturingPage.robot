*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${Manufacturing_OPERATION}          xpath://a[@data-menu-xmlid="mrp.menu_mrp_manufacturing"]
${Manufacturing_PLANNING}           xpath://a[@data-menu-xmlid="mrp.mrp_planning_menu_root"]
${Manufacturing_PRODUCTS}           xpath://a[@data-menu-xmlid="mrp.menu_mrp_bom"]
${Manufacturing_REPORTING}          xpath://a[@data-menu-xmlid="mrp.menu_mrp_reporting"]

${CREATE_BTN}                     xpath://button[@accesskey="c"]

*** Keywords ***
Click Create Manufacturing Button
    Wait Until Page Contains Element    ${CREATE_BTN}
    Click Element    ${CREATE_BTN}
