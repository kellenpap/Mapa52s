*** Settings ***
Resource    ../main.robot
Library    String

*** Variables ***


*** Keywords ***

Dado que aplico filtro para o centro de planejamento "${PLANEJAMENTO}"
    Click Element             locator=${CENTRO_PLANEJAMENTO}
    Input Text                locator=//input[contains(@type,'text')]    text=${PLANEJAMENTO}
    Click Element             locator=//li[contains(@id,'planningCenter_0')]/div[contains(.,'${PLANEJAMENTO}')]
Quando aplico o filtro para o centro de localização "${LOCALIZA}"
    Click Element             locator=${CENTRO_LOCALIZACAO}
    sleep  2 
    Input Text                locator=//input[contains(@type,'text')]      text=${LOCALIZA}
    Click Element             locator=//*[@id="localizationCenter_0"]/div[contains(.,'${LOCALIZA}')]

E seleciono a fase "${FASE}"
    Click Element             locator=${FASE_HOME}
    Input Text                locator=//input[contains(@type,'text')]    text=${FASE}
    Click Element             locator=//li[contains(@id,'phase_0')]/div[contains(.,'${FASE}')]
    
E clico em Aplicar
    Sleep    2
    Click Button              locator=//button[@id='applyHomeFilter'] 

Então o sistema apresenta nos cards os dados referente aos centros pesquisados
    Sleep    2


E clico em Ver notificação
    Click Button               locator=(//button[@class='p-element notification-button outlined small p-button p-component'][contains(.,'Ver notificação')])

E aguardo exibir dados em tela
    Sleep    5

Então o sistema direciona para a tela de notificações
    Wait Until Element Is Visible     locator=${SUBTITULO}

E verifico a rota "Notificações"
    Wait Until Element Is Visible     locator=${ROTA_NOTIFICACAO}

E verifico a rota "Gestão de Paradas"
    Wait Until Element Is Visible     locator=${ROTA_GESTAO}

E verifico a rota "Solicitar Workflow"
    Wait Until Element Is Visible     locator=${ROTA_WORKFLOW} 

Então retorno para a Home
    Click Button                      locator=//button[contains(@ng-reflect-content,'Página Inicial')]
    Sleep    5
    Wait Until Element Is Visible     locator=//h4[contains(.,'Olá, AUTO!')]
    Sleep    5

Clicar em Ver paradas
    Click Button                      locator=${VER_PARADAS}

Então o sistema direciona para tela de gestão de paradas
    Wait Until Element Is Visible     locator=//a[@role='tab'][contains(@id,'action')][contains(.,'Lista')]
Clicar em Ver solicitações
    Click Button                      locator=${VER_SOLICITACAO}
    
Clicar em Acessar Calendário
    Click Button                      locator=${ACESSAR_CALENDARIO}

Então o sistema direciona para tela de solicitar alteração de paradas
    Wait Until Element Is Visible     locator=//span[contains(.,'Solicitar Workflow')]
    Sleep    2
Então o sistema direciona para tela de calendário de paradas
    Wait Until Element Is Visible     locator=//span[contains(.,'Calendário')]
    Sleep    2