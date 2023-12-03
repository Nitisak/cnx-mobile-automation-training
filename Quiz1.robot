*** Comments ***
# This sample code supports Appium Robot client >=2
# pip install robotframework-appiumlibrary
# Then you can paste this into a file and simply run with Robot
#
# Find keywords at: http://serhatbolsu.github.io/robotframework-appiumlibrary/AppiumLibrary.html
#
# If your tests fails saying 'did not match any elements' consider using 'wait activity' or
# 'wait until page contains element' before a click command


*** Settings ***
Library     AppiumLibrary


*** Variables ***
${KSN}      Krungsri Nimble
  

*** Test Cases ***
Test Case Quiz1
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
    AppiumLibrary.Wait Until Element Is Visible     xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout
    AppiumLibrary.Click Element    xpath=//android.view.ViewGroup[@content-desc="open menu"]/android.widget.ImageView
    AppiumLibrary.Wait Until Element Is Visible    accessibility_id=menu item webview
    AppiumLibrary.Click Element    accessibility_id=menu item webview
    AppiumLibrary.Wait Until Element Is Visible    accessibility_id=URL input field
    AppiumLibrary.Click Element    accessibility_id=URL input field
    AppiumLibrary.Input Text    accessibility_id=URL input field    www.google.co.th
    Sleep    1s
    AppiumLibrary.Click Element    accessibility_id=Go To Site button
    AppiumLibrary.Click Element    accessibility_id=Go To Site button
    AppiumLibrary.Wait Until Page Contains Element    xpath=//android.webkit.WebView
    AppiumLibrary.Click Element    xpath=//android.widget.EditText[@resource-id="XSqSsc"]
    AppiumLibrary.Input Text Into Current Element    ${KSN}
    Sleep    1s
    AppiumLibrary.Click Element At Coordinates    1335    2825
    AppiumLibrary.Swipe    500    2000    500    1000
    AppiumLibrary.Click Element    xpath=//android.view.View[@text="Krungsri Nimble"]
    Sleep    3s
    AppiumLibrary.Swipe    500    2000    500    1000
    AppiumLibrary.Swipe    500    2000    500    1000
    AppiumLibrary.Wait Until Element Is Visible    Xpath=//android.widget.TextView[@text="Nimble is an innovation and IT solution hub for new and advanced technologies. The company will help Krungsri group to make innovative changes for the benefits of clients while reinforcing leadership position in the market."]
    AppiumLibrary.Capture Page Screenshot
    AppiumLibrary.Close Application
