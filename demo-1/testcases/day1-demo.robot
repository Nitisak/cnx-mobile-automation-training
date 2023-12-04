*** Settings ***
Resource    ../resources/import.robot
Test Teardown    Close Application
*** Test Cases ***
Quiz 001
    Open App    ${day1_apk_path}
    AppiumLibrary.Wait Until Element Is Visible    android=UiSelector().text("Webview")
    AppiumLibrary.Click Element    android=UiSelector().text("Webview")
    AppiumLibrary.Wait Until Element Is Visible    android=UiSelector().textContains("Next-gen browser")
    Swipe Up Until    E2E and Unit
    AppiumLibrary.Capture Page Screenshot  
P Shine Quiz
    Open App    ${day1_apk_path}
    AppiumLibrary.Wait Until Element Is Visible    android=UiSelector().text("Webview")
    AppiumLibrary.Click Element    android=UiSelector().text("Webview")
    AppiumLibrary.Wait Until Element Is Visible    android=UiSelector().textContains("Next-gen browser")
    Swipe Up Until    Auto Wait
    AppiumLibrary.Capture Page Screenshot   