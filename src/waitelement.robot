*** Settings ***

Resource    full.robot

*** Keywords ***

WaitElementForm
    Wait Until Element is Visible   ${search_form}

WaitElementQuery
    Wait Until Element is Visible   ${search_query}