*** Settings ***
Resource    ../main.robot
Library    XML
Library    SeleniumLibrary

*** Variables ***
${CAMPOFASE}            //*[@id="phase"]/span/div
${VALOR_PADRAO}         'Porto'
${HOME}                 id:homeMenu

*** Keywords ***

Dado que acesso o menu Gestão de Paradas
    Click Element            locator=${MENU_GESTAOPARADA}
    Sleep    2
E clico em Cadastrar Paradas
    Click Element            locator=(//a[contains(@class,'p-ripple p-element')]//span)[1]
    Sleep    2

E seleciono o Centro de Planejamento "${planejamento_parada}"
    Click Element            locator=(//div[@id='planningCenter']//span)[1]
    Sleep    2
    Set Focus To Element     locator=//input[@aria-owns='planningCenter_list']
    Input Text               locator=//input[@aria-owns='planningCenter_list']      text=${planejamento_parada}
    Sleep    2
    Click Element            locator=//li[@id='planningCenter_0']

E seleciono o Centro de Localização "${localizacao_parada}"
    Click Element            locator=(//div[@id='localizationCenter']//span)[1]
    Sleep    2
    Set Focus To Element     locator=//input[@aria-owns='localizationCenter_list']
    Input Text               locator=//input[@aria-owns='localizationCenter_list']   text=${localizacao_parada}
    Sleep    2
    Click Element            locator=//li[@id='localizationCenter_0']
    Sleep    2


E verifico a fase "${fase_parada}"
    Set Focus To Element     locator=//div[@id='phase']//span[1]
    Click Element            locator=//div[@id='phase']//span[1]
    Sleep    2
    Input Text               locator=//input[contains(@role,'searchbox')]             text=${fase_parada}
    Sleep    2
    Click Element            locator=//li[@id='phase_0']
    Sleep    2

E preencho o campo Descrição completa com o valor "${textodescricao}"
    Input Text               locator=//*[@id="fullDescription"]                       text=${textodescricao}
    Sleep    5

E clico em Dados gerais
    Click Button              locator=//*[@id="generalDataToggleButton"]

E clico em Planejamento e realização
    Click Button              locator=planningAndExecutionToggleButton

E seleciono as datas de planejamento
    Input Text               locator=//*[@id="startDate"]/span/input                   text="23/12/2024 17:55"
    Input Text               locator=//*[@id="endDate"]/span/input                     text="24/12/2024 18:55"


E fecho o Planejamento e realização
    Click Button               locator=planningAndExecutionToggleButton


# E avanco para etapa de selecao de ativos
#     Click Element            locator=//*[@id="planningAndExecutionNextButton"]/span[2]
#     Sleep   5 

E clico em Seleção de ativos
    Click Button               locator=//*[@id="functionalLocationsToggleButton"]


E seleciono o grupo de ativos "${GRUPO_ATIVO}"
    Scroll Element Into View    locator=//span[contains(.,'Exceções do grupo (0)')]
    
    Set Focus To Element        locator=(//span[@aria-label='Selecione'])[1]
    Click Element               locator=(//span[@aria-label='Selecione'])[1]
    Input Text                  xpath=//input[@role='searchbox']                       text=${GRUPO_ATIVO}
    Click Element               xpath=//li[@role='option']

E fecho Seleção de ativos
    Click Button                locator=//*[@id="functionalLocationsToggleButton"]


E clico em Informações da parada
    Click Button                locator=shutdownInfoToggleButton
    

Salvar cadastro
    Click Button                locator=${SALVAR}
    Wait Until Element Is Visible    locator=${HOME}
Então retorno para o dashboard
    Sleep    2
    Click Button                locator=${HOME}
    Sleep    3