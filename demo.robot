*** Settings ***
Library           AppiumLibrary


*** Variables ***
${REMOTE_URL}   http://127.0.0.1:4723
${appium:automationName}    uiautomator2
${platformName}    android
${appium:platformVersion}    13
${appium:deviceName}    emulator-5554
${appium:appPackage}    com.wdiodemoapp
${appium:appActivity}    .MainActivity
${appium:app}    /Users/7n100349/Desktop/Damo-Day1/day1.apk
${appium:ensureWebviewsHavePages}    true
${appium:nativeWebScreenshot}    true
${appium:newCommandTimeout}    3600
${appium:connectHardwareKeyboard}    true

*** Test Cases ***
Scroll to find text with expected
    Open Application    ${REMOTE_URL}   appium:automationName=${appium:automationName}  platformName=${platformName}  appium:platformVersion=${appium:platformVersion}  appium:deviceName=${appium:deviceName}  appium:appPackage=${appium:appPackage}  appium:appActivity=${appium:appActivity}  appium:app=${appium:app}  appium:ensureWebviewsHavePages=${appium:ensureWebviewsHavePages}  appium:nativeWebScreenshot=${appium:nativeWebScreenshot}  appium:newCommandTimeout=${appium:newCommandTimeout}  appium:connectHardwareKeyboard=${appium:connectHardwareKeyboard}
    AppiumLibrary.Wait Until Element Is Visible    android=UiSelector().text("Demo app for the appium-boilerplate")
    AppiumLibrary.Wait Until Element Is Visible    accessibility_id=Webview
    AppiumLibrary.Click Element    accessibility_id=Webview
    AppiumLibrary.Wait Until Element Is Visible    android=UiSelector().resourceId("__docusaurus_skipToContent_fallback")    timeout=10s
    AppiumLibrary.Swipe    500    2000    500    1000
    AppiumLibrary.Swipe    500    2000    500    1000
#     AppiumLibrary.Swipe    500    2000    500    1000
#     AppiumLibrary.Swipe    500    2000    500    1000
#     AppiumLibrary.Swipe    500    2000    500    1000
#     AppiumLibrary.Swipe    500    2000    500    1000
#     AppiumLibrary.Swipe    500    2000    500    1000
    AppiumLibrary.Wait Until Element Is Visible    android=UiSelector().text("Versatile and Feature Richx") 
#     AppiumLibrary.Wait Until Element Is Visible    android=UiSelector().text("E2E and Unit / Component Testing in real Browser!")
    AppiumLibrary.Capture Page Screenshot
    AppiumLibrary.close application

        