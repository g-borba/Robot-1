*** Settings ***
Documentation       Primeiro teste no robot, com a finalidade de abrir um browser e realizar uma pesquisa
Library     SeleniumLibrary

*** Variables ***
${url}      https://www.google.com
${browser}      chrome
${search_form}      css=form[name=f]
${search_query}     css=input[name=q]
${search_term}      Los Angeles Lakers

*** Test Cases ***
Abrir Navegador
    OpenBrowser     ${url}      ${browser}

Pesquisar
    Input Text      ${search_query}   ${EMPTY}
    Input Text      ${search_query}   ${search_term}
    Submit Form
    CloseBrowser