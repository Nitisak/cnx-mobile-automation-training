*** Variables ***
${day1_apk_path}    ${CURDIR}/day1.apk
${day2_apk_path}    ${CURDIR}/day2.apk

${REMOTE_URL}   http://127.0.0.1:4723
${appium:automationName}    uiautomator2
${platformName}    android
${appium:platformVersion}    13
${appium:deviceName}    emulator-5554
${appium:app}
${appium:ensureWebviewsHavePages}    true
${appium:nativeWebScreenshot}    true
${appium:newCommandTimeout}    3600
${appium:connectHardwareKeyboard}    true
${appium:appPackage}    com.wdiodemoapp
${appium:appActivity}    .MainActivity