*** Settings ***
Documentation       Resource file containing variables and keywords

Library     SeleniumLibrary

*** Variables ***

${browser}=     Set Variable    chrome

*** Keywords ***

Open Google
    ${url}=     Set Variable        https://www.google.com
    Open Browser     ${url}      ${browser}

Wait Element
    ${search_form}=     Set Variable     css=form
    ${search_query}=     Set Variable     css=input[name=q]
    Wait Until Element is Visible   ${search_form}
    Wait Until Element is Visible   ${search_query}

Form Text
    ${search_query}=     Set Variable     css=input[name=q]    
    ${search_term}=     Set Variable    Los Angeles Lakers
    Input Text      ${search_query}   ${search_term}