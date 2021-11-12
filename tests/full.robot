*** Settings ***
Documentation       My second test on robot
Library     SeleniumLibrary

Resource    ../src/openbws.robot
Resource    ../src/waitelement.robot
Resource    ../src/inputxt.robot
Resource    ../src/sbtform.robot
Resource    ../src/closebws.robot

*** Variables ***
${url}      https://www.google.com
${browser}      chrome
${search_form}      css=form[name=f]
${search_query}     css=input[name=q]
${search_term}      Los Angeles Lakers

*** Test Cases ***

# Open Browser Test
TC 01.1
    OpenBws

# Page Elements Test
TC 02.1
    WaitElementForm

TC 02.2
    WaitElementQuery

# Input Text Test
TC 03.1
    Inputxt

# Form Submission Test
TC 04.1
    SbtForm

# Close Browser Test
TC 05.1
    CloseBws

