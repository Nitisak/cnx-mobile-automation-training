*** Settings ***
Library           AppiumLibrary


*** Variables ***
${REMOTE_URL}   http://127.0.0.1:4723
${appium:automationName}    uiautomator2
${platformName}    android
${appium:platformVersion}    13
${appium:deviceName}    emulator-5554
${appium:app}    /Users/7n100349/Desktop/Damo-Day1/day2.apk
${appium:ensureWebviewsHavePages}    true
${appium:nativeWebScreenshot}    true
${appium:newCommandTimeout}    3600
${appium:connectHardwareKeyboard}    true

*** Test Cases ***
Test case name
        Open Application    ${REMOTE_URL}   appium:automationName=${appium:automationName}  platformName=${platformName}  appium:platformVersion=${appium:platformVersion}  appium:deviceName=${appium:deviceName}  appium:app=${appium:app}  appium:ensureWebviewsHavePages=${appium:ensureWebviewsHavePages}  appium:nativeWebScreenshot=${appium:nativeWebScreenshot}  appium:newCommandTimeout=${appium:newCommandTimeout}  appium:connectHardwareKeyboard=${appium:connectHardwareKeyboard}
         AppiumLibrary.Click Element    Accessibility_ID=open menu
         AppiumLibrary.Click Element    Accessibility_ID=container header
         AppiumLibrary.Click Element    Accessibility_ID=URL input field
         AppiumLibrary.Input Text    Accessibility_ID=URL input field    www.google.com 
         Sleep    1s
         AppiumLibrary.Click Element    Accessibility_ID=Go To Site button
         Sleep    1s
         AppiumLibrary.Click Element    Accessibility_ID=Go To Site button
         Sleep    1s
         AppiumLibrary.Click Element    Accessibility_ID=XSqSsc
         AppiumLibrary.Input Text    Accessibility_ID=URL input field    Krungsri nimble 
        