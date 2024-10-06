*** Settings ***
Library    Browser

*** Variables ***
${URL}    http://google.com

*** Test Cases ***
Landing
    [Documentation]    Abre la página de ejemplo y verifica el título.
    New Browser    headless=False
    New Page    ${URL}
    ${titulo} =    Get Title
    Log to Console  ${titulo}
    Close Browser
