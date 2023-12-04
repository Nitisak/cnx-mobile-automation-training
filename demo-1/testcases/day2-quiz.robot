*** Settings ***
Resource    ../resources/import.robot
Test Teardown    Close Application
*** Test Cases ***
Day 2 Quiz 1
    Open App    ${day2_apk_path}
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.ViewGroup[@content-desc="open menu"]/android.widget.ImageView
    AppiumLibrary.Click Element    xpath=//android.view.ViewGroup[@content-desc="open menu"]/android.widget.ImageView
    AppiumLibrary.Wait Until Element Is Visible    android=UiSelector().text("Webview")
    AppiumLibrary.Click Element    android=UiSelector().text("Webview")
    AppiumLibrary.Wait Until Element Is Visible    accessibility_id=URL input field
    AppiumLibrary.Input Text    accessibility_id=URL input field    www.google.co.th
    AppiumLibrary.Click Element    accessibility_id=Go To Site button
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Image[@resource-id="hplogo"]
    AppiumLibrary.Input Text    class=android.widget.EditText    krungsri nimble
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="ค้นหาด้วย Google"]
    AppiumLibrary.Press Keycode    66
    Swipe Up Until    innovative changes for the 
    AppiumLibrary.Capture Page Screenshot
    AppiumLibrary.Click Element    android=UiSelector().textContains("krungsrinimble.com")
    Sleep    2s
    AppiumLibrary.Capture Page Screenshot

Day 2 Quiz 2
    Open App    ${day2_apk_path}
    Cart Sorting
    Swipe Up Until    Test.allTheThings() T-Shirt
    Add item to cart    Test.allTheThings
    Verify Page   
    Go to cart
    Verify Page

Day 2 Quiz 3
    Open App    ${day2_apk_path}
    Cart Sorting    nameDesc
    Swipe Up Until    Test.allTheThings() T-Shirt
    Add item to cart    Test.allTheThings
    Verify Page
    Go to cart
    Verify Page

Day 2 Quiz 4
    Open App    ${day2_apk_path}
    Cart Sorting    priceAsc
    Swipe Up Until    Test.allTheThings() T-Shirt
    Add item to cart    Test.allTheThings
    Verify Page
    Go to cart
    Verify Page

Day 2 Quiz 5
    Open App    ${day2_apk_path}
    Cart Sorting    priceDesc
    Swipe Up Until    Test.allTheThings() T-Shirt
    Add item to cart    Test.allTheThings
    Verify Page
    Go to cart
    Verify Page