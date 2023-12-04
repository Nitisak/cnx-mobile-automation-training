*** Keywords ***
Open App
    [Documentation]    example of apk_path [APK_PATH=${day1_apk_path}]
    [Arguments]    ${APK_PATH}=${day1_apk_path}
    IF    '${APK_PATH}' == '/Users/7n100350/demo-1/resources/day1.apk'
        Open Application    ${REMOTE_URL}   appium:automationName=${appium:automationName}  platformName=${platformName}  appium:platformVersion=${appium:platformVersion}  appium:deviceName=${appium:deviceName}  appium:appPackage=${appium:appPackage}  appium:appActivity=${appium:appActivity}  appium:app=${APK_PATH}  appium:ensureWebviewsHavePages=${appium:ensureWebviewsHavePages}  appium:nativeWebScreenshot=${appium:nativeWebScreenshot}  appium:newCommandTimeout=${appium:newCommandTimeout}  appium:connectHardwareKeyboard=${appium:connectHardwareKeyboard}
    ELSE
        Open Application    ${REMOTE_URL}   appium:automationName=${appium:automationName}  platformName=${platformName}  appium:platformVersion=${appium:platformVersion}  appium:deviceName=${appium:deviceName}    appium:app=${APK_PATH}  appium:ensureWebviewsHavePages=${appium:ensureWebviewsHavePages}  appium:nativeWebScreenshot=${appium:nativeWebScreenshot}  appium:newCommandTimeout=${appium:newCommandTimeout}  appium:connectHardwareKeyboard=${appium:connectHardwareKeyboard}
    END 
Swipe Up Until
    [Documentation]    swipe until find locator using UiSelector with contains wording [no default value] example ${locator}=Unit Test
    [Arguments]    ${locator}    ${x_start}=500    ${x_offset}=500    ${y_start}=1800    ${y_offset}=1000
    ${status}    Run Keyword And Return Status    AppiumLibrary.Wait Until Element Is Visible    android=UiSelector().textContains("${locator}")    1
    FOR    ${i}    IN RANGE    1    10
        IF    not ${status}
            AppiumLibrary.Swipe    ${x_start}    ${y_start}    ${x_offset}    ${y_offset}
            ${status}    Run Keyword And Return Status    AppiumLibrary.Wait Until Element Is Visible    android=UiSelector().textContains("${locator}")    0
            # Log To Console    ${status}
        ELSE
                Exit For Loop
        END
    END 
    Should Be True    '${status}' == '${True}'
Cart Sorting
    [Documentation]    for sorting item in day2-demo application [example ${sorting}=nameAsc or {nameDesc , priceAsc , priceDesc }]
    [Arguments]    ${sorting}=nameAsc
    AppiumLibrary.Wait Until Element Is Visible    xpath=//*[@content-desc="sort button"]/android.widget.ImageView
    AppiumLibrary.Click Element    xpath=//*[@content-desc="sort button"]/android.widget.ImageView
    AppiumLibrary.Wait Until Element Is Visible    accessibility_id=${sorting}
    AppiumLibrary.Click Element    accessibility_id=${sorting}

Add item to cart
    [Documentation]    for adding an item to the cart [only 1 per time][${itemName}=Test.allTheThings]
    # By contains word 
    [Arguments]    ${itemName}
    AppiumLibrary.Click Element    android=UiSelector().textContains("Test.allTheThings")
    AppiumLibrary.Wait Until Element Is Visible    accessibility_id=Add To Cart button
    AppiumLibrary.Click Element    accessibility_id=Add To Cart button

Verify Page
    [Documentation]    take screenshot to Verify the page
    AppiumLibrary.Capture Page Screenshot
    Sleep    1s    #wait 1 sec for adding an item
Go to cart
    [Documentation]    for going to cart page in day2-demo application
    AppiumLibrary.Click Element    //*[@content-desc="cart badge"]/android.widget.ImageView