*** Settings ***
Documentation    Keyword file contains all the common keywords
Resource    ${EXECDIR}/resources/locators.robot
Library     SeleniumLibrary
Library     ${EXECDIR}/library/chromedriversetup.py


*** Keywords ***

Navigate To Ebay Site
    [Documentation]         This keyword will navigate to ebay site
    [Arguments]             ${browser}
    ${chromedriver_path}=   chromedriversetup.Get Chromedriver Path
    Open Browser    ${url}  browser=${browser}  executable_path=${chromedriver_path}
    wait until element is visible       ${textBoxSearchInput}

Search For Item
    [Documentation]         This keyword will search for the item on home page
    [Arguments]             ${itemName}
    input text  ${textBoxSearchInput}   ${itemName}
    click button    ${buttonSearchId}

Select The First Item
    [Documentation]         This keyword selects first item from the search result on ebay homepage
    ${itemTextForFirstItem}      Get Text         ${uiSearchFirstItem}
    set test variable      ${itemTextForFirstItem}
    click element       ${uiSearchFirstItem}
    wait until element is visible    ${buttonAddToCart}

Add Item To Cart
    [Documentation]    This keyword will add selected item to cart
    ${isColorOptionVisible}      Run Keyword And Return Status    Element Should Be Visible      ${colorOptions}
    Run Keyword If      ${isColorOptionVisible}       select from list by index     ${colorOptions}       1
    click link   ${buttonAddToCart}
    ${isProtectionPlanVisible}      Run Keyword And Return Status    Element Should Be Visible      ${addOnPopUp}
    Run Keyword If    ${isProtectionPlanVisible}    click button    ${buttonAddOnNoThanks}

Verify Element In The Cart
    [Documentation]    This keyword will verify if the correct item is added to the cart
    ${itemTextInCart}       Get Text        ${elementInTheCart}
    Should be equal   ${itemTextInCart}   ${itemTextForFirstItem}

Click On My eBay Menu
    [Documentation]    This keyword will click on my ebay menu on home page
    click link   ${myCartLink}
    wait until element is visible    ${buttonContinueLogin}

Click On Continue Login Button And Verify Error Message
    [Documentation]     This Keyword Will click on continue login button
    click button        ${buttonContinueLogin}
    ${actualIdErrorMessage}=      Get Text        ${errorMessage}
    ${expectedErrorMessage}=     set variable     Oops, that's not a match.
    Should be equal   ${actualIdErrorMessage}   ${expectedErrorMessage}

