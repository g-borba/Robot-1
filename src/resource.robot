*** Settings ***
Documentation       Resource file containing variables and keywords

Library     SeleniumLibrary

*** Variables ***

${url}      https://www.google.com
${browser}      chrome
${search_form}      css=form[name=f]
${search_query}     css=input[name=q]
${search_term}      Los Angeles Lakers

*** Keywords ***

Open Google
    Open Browser     ${url}      ${browser}

Wait Element Form
    Wait Until Element is Visible   ${search_form}

Wait Element Query
    Wait Until Element is Visible   ${search_query}

Form Text
    Input Text      ${search_query}   ${search_term}