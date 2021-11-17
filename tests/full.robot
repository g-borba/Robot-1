*** Settings ***
Documentation       My third test on robot

Resource    ../src/resource.robot

*** Test Cases ***

TC 01.1 - Opening browser and Google page
    Open Google

TC 02.1 - Page Form Element Visibility Test
    Wait Element Form

TC 02.2 - Page Query Element Visibility Test
    Wait Element Query

TC 03.1 - Form Input Text
    Form Text

TC 04.1 - Submitting form
    Submit Form

TC 05.1 - Closing browser
    Close Browser
