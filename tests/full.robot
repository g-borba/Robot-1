*** Settings ***
Documentation       My third test on robot

Resource    ../src/resource.robot

Suite Setup     Open Google
Suite Teardown  Close Browser

*** Test Cases ***

TC 01.1 - Page Elements Test
    Wait Element

TC 02.1 - Form Input Text
    Form Text

TC 02.2 - Submitting form
    Submit Form