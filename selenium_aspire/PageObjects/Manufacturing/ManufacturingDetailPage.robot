*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary
Library       Collections

*** Variables ***
${NAME}                   xpath://span[@name="name"]
${PROD_NAME}              xpath://*[@name="product_id"]
${PROD_QTY}               xpath://*[@name="product_qty"]
${SCHEDULE}               xpath://*[@name="date_planned_start"]
${BOM}                    xpath://*[@name="bom_id"]
${USERID}                 xpath://*[@name="user_id"]

*** Keywords ***
Get Manufacturing Field Labels
    Get Actual Field Label    ${PROD_NAME}
    Get Actual Field Label    ${PROD_QTY}
    Get Actual Field Label    ${SCHEDULE}
    Get Actual Field Label    ${BOM}
    Get Actual Field Label    ${USERID}

Get Manufacturing Values
    @{Order_Infor}=    Create List
    ${Name}=        Get Actual Field Values    ${PROD_NAME}//span
    ${Qty}=         Get Actual Field Values    ${PROD_QTY}
    ${Schedule}=    Get Current Day Create Maufacturing Without Special Time
    ${BOM}=         Get Actual Field Values    ${BOM}
    ${User}=        Get Actual Field Values    ${USERID}
    Append To List    ${Order_Infor}    ${Name}   ${Qty}    ${Schedule}   ${BOM}    ${User}
    [return]    ${Order_Infor}

Get Current Day Create Maufacturing Without Special Time
    ${act_labels}=    Get Actual Field Values    ${SCHEDULE}
    @{act_label}=    Split String    ${act_labels}   ${SPACE}
    [return]   ${act_label}[0]
