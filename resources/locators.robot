*** Variables ***

${url}=     https://www.ebay.com.au/
${browser}=     chrome

#comment      *** ebay home page locators ***
${textBoxSearchInput}=      //input[@id='gh-ac']
${buttonSearchId}=      gh-btn
${uiSearchFirstItem}=       //li[@data-view="mi:1686|iid:1"]//a[@class='s-item__link']/h3
${myCartLink}=      //div[@class='gh-menu']/a[@title='My eBay']

#comment  *** ttem details page locators ***
${buttonAddToCart}=     isCartBtn_btn
${buttonAddOnNoThanks}=     //button[text()='No thanks']
${addOnPopUp}=      ADDON_0
${colorOptions}=        //select[@name='Colors']

#comment *** cart page locators ***
${cartBucketList}=  cart-bucket
${elementInTheCart}=        //div[@class='listsummary-content-itemdetails']//a//span[@class='BOLD']

#comment *** my ebay login page locator ***
${buttonContinueLogin}=     signin-continue-btn
${errorMessage}=        errormsg