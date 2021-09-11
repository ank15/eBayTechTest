*** Settings ***
Documentation  This test suite contains tests for eBay website
Resource       ${EXECDIR}/resources/keywords.robot
Suite Setup    Set Screenshot Directory      ${EXECDIR}/screenshots
Test Setup     Ebay Test Setup
Test Teardown  Close All Browsers
Force Tags      eBay

*** Variables ***
${itemToSearch}=    Bike

*** Keywords ***
Ebay Test Setup
    [Documentation]     This keyword will launch ebay.com.au
    Navigate To Ebay Site   ${browser}

*** Test Cases ***
Verify Add To Cart Scenario
    [Documentation]      This test case will verify item added to cart is displayed in the cart.
    [Tags]                TEST_CASE_1
    Search For Item     ${itemToSearch}
    Select The First Item
    Add Item To Cart
    Verify Element In The Cart


Verify Login Without Username And Password
    [Documentation]      This test case will verify error messages when logging in without username or password
    [Tags]               TEST_CASE_2
    Click On My eBay Menu
    Click On Continue Login Button And Verify Error Message


