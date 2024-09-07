*** Settings ***
Resource    ../main.robot

*** Variables ***
${LOGIN}     id:loginButton


*** Keywords ***
Dado que acesso o mapa 52 semanas
    Open Browser    ${geral.URL}    ${geral.Browser}  ${geral.options}
    Maximize Browser Window
    Sleep    5
Quando faço o Login   
    Input Text    locator=//input[@formcontrolname='userId']    text=auto
    Set Focus To Element    locator=//div[@class='p-element p-multiselect-label-container'][contains(.,'Perfil')]
    Click Element    locator=//div[@class='p-element p-multiselect-label-container'][contains(.,'Perfil')]
    Click Element    locator=//li[@aria-label='Admin']
    DoubleClick Element    locator=//h3[contains(.,'Mapa de 52 Semanas')]
    Sleep    2
    Click Button    locator=${LOGIN}
    Sleep    2
E verifico se o título da página é "${TITULO}"
    Title Should Be    title=${TITULO}

Então encerro sessão
    sleep    2
    Click Button    locator=//button[contains(@id,'menu')]
    Click Element    locator=//a[contains(.,'Logout')]

Fechar modal
    Element Should Be Visible    locator=//span[contains(.,'Atenção')]
    Click Button                 locator=//*[@id="button-0"]
    Sleep    2