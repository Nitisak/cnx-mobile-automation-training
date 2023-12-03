*** Settings ***
Library    AppiumLibrary
Library    String

Resource    Keyword/Keyword.robot
Resource    ../Keyword/Keyword.robot

*** Test Cases ***
Test Quiz 2
    Open Demo App
    Click sort button
    Click sort by Name - Ascending
    Choose Test.allTheThing shirt
    Checkout the cart
    Capture Screenshot

Test Quiz 3
    Open Demo App
    Click sort button
    Click sort by Name - Descending
    Choose Test.allTheThing shirt
    Checkout the cart
    Capture Screenshot

Test Quiz 4
    Open Demo App
    Click sort button
    Click sort by Price - Ascending
    Choose Test.allTheThing shirt
    Checkout the cart
    Capture Screenshot

Test Quiz 5
    Open Demo App
    Click sort button
    Click Sort by Price - Descending
    Choose Test.allTheThing shirt
    Checkout the cart
    Capture Screenshot