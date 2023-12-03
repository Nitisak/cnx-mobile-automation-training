*** Settings ***
Library    AppiumLibrary

*** Variables ***
${Test.allTheThing_Shirt}    //android.widget.TextView[@content-desc="store item text" and @text="Test.allTheThings() T-Shirt"]

*** Keywords ***
Open Demo App
    Open Application
    ...    http://127.0.0.1:4723
    ...    appium:automationName=uiautomator2
    ...    platformName=android
    ...    appium:platformVersion=14
    ...    appium:deviceName=emulator-5554
    ...    appium:app=/Users/7n100344/Downloads/workshopday2/day2.apk
    ...    appium:ensureWebviewsHavePages=${True}
    ...    appium:nativeWebScreenshot=${True}
    ...    appium:newCommandTimeout=${3600}
    ...    appium:connectHardwareKeyboard=${True}   
    AppiumLibrary.Wait Until Element Is Visible    Xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout
    AppiumLibrary.Wait Until Element Is Visible    Xpath=//android.view.ViewGroup[@content-desc="sort button"]/android.widget.ImageView
Click sort button
    AppiumLibrary.Click Element    Xpath=//android.view.ViewGroup[@content-desc="sort button"]/android.widget.ImageView
    Sleep    1s
    AppiumLibrary.Wait Until Element Is Visible    Xpath=//android.widget.TextView[@text="Sort by:"]
Click sort by Name - Ascending
    AppiumLibrary.Click Element    Xpath=//android.widget.TextView[@text="Name - Ascending"]
Click sort by Name - Descending
    AppiumLibrary.Click Element    Xpath=//android.widget.TextView[@text="Name - Descending"]

Click sort by Price - Ascending
    AppiumLibrary.Click Element   Xpath=//android.widget.TextView[@text="Price - Ascending"]
Click Sort by Price - Descending
    AppiumLibrary.Click Element    Xpath=//android.widget.TextView[@text="Price - Descending"]
Choose Test.allTheThing shirt
    ${status}    BuiltIn.Run Keyword And Return Status    AppiumLibrary.Wait Until Element Is Visible    Xpath=//android.widget.TextView[@content-desc="store item text" and @text="Test.allTheThings() T-Shirt"]
    FOR    ${i}    IN RANGE    1   5
        IF    not ${status}
            AppiumLibrary.Swipe    500    2000    500    1000
            ${status}    BuiltIn.Run Keyword And Return Status    AppiumLibrary.Wait Until Element Is Visible    Xpath=//android.widget.TextView[@content-desc="store item text" and @text="Test.allTheThings() T-Shirt"]
        ELSE
            Exit For Loop
        END
    END
    Should be true      ${status}    msg=" "
    AppiumLibrary.Click Element    Xpath=//android.widget.TextView[@content-desc="store item text" and @text="Test.allTheThings() T-Shirt"]
Checkout the cart
    AppiumLibrary.Wait Until Element Is Visible    Xpath=//android.widget.TextView[@text="Add To Cart"]
    AppiumLibrary.Click Element    Xpath=//android.widget.TextView[@text="Add To Cart"]
    AppiumLibrary.Click Element    Xpath=//android.view.ViewGroup[@content-desc="cart badge"]/android.widget.ImageView
    AppiumLibrary.Wait Until Element Is Visible    Xpath=//android.widget.TextView[@text="Proceed To Checkout"]
Capture Screenshot
    AppiumLibrary.Capture Page Screenshot
    