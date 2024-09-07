*** Settings ***
Resource    ../main.robot
Library    String

*** Variables ***
${Titulo}                   //input[@id='title']
${Subtitulo_Notifica}       //input[contains(@id,'subtitle')]
${Menu_usuario}             //button[contains(@id,'menu')]

*** Keywords ***
#Cadastro
Dado que acesso o menu de usuário
    Sleep    2
    Click Button    locator=${Menu_usuario}

Quando clico em Ajuda
    Sleep    2
    DoubleClick Element    locator=//span[contains(.,'Ajuda')]

E acesso ao menu de notificações
    Sleep    2
    Click Element    locator=//span[contains(.,'Notificações')]
    Sleep    2
    Wait Until Element Is Visible     locator=${ROTA_NOTIFICACAO}

E clico para cadastrar uma notificação
    Click Button    locator=${BTN_MENU_ACAO}
    Click Button    locator=${ADICIONAR}
    Sleep    2

E seleciono a categoria
    Click Element    locator=//p-dropdown[contains(@formcontrolname,'typeId')]
    Click Element    locator=//li[@role='option'][contains(@id,'0')][contains(.,'Informações')] 


E seleciono a data inicio
    Click Element    locator=//*[@id="startDate"]/div/p-calendar/span/input
    Input Text       locator=//*[@id="startDate"]/div/p-calendar/span/input    text="10/09/2024 16:57"

E preencho o campo input Titulo
    Click Element     locator=${Titulo} 
    Input Text        locator=${Titulo}    text=Titulo teste Automação

E preencho o campo input Subtitulo
    Click Element     locator=${Subtitulo_Notifica}
    Input Text        locator=${Subtitulo_Notifica}    text=Subtitulo teste Automação

E preencho o campo descritivo
    Click Element    locator=//div[contains(@class,'ql-editor ql-blank')]
    Input Text       locator=//div[contains(@class,'ql-editor ql-blank')]   text=Descritivo teste Automação

E clico em salvar 
    Click Button     locator=${SALVAR}

#Edição
E verifico se a notificação foi criada com sucesso
    Sleep    2
    Click Element    locator=//input[contains(@id,'filter')]
    Input Text       locator=//input[contains(@id,'filter')]    text=Titulo teste Automação
    Wait Until Element Is Visible    locator=//span[contains(.,'Titulo teste Automação')]

E filtro a notificação
    Click Element     locator=//input[contains(@id,'filter')]
    Input Text        locator=//input[contains(@id,'filter')]    text=Titulo teste Automação
    Wait Until Element Is Visible    locator=//span[contains(.,'Titulo teste Automação')]

E clico em editar
    Click Button      locator=//*[@icon="pi pi-pencil"]
    Sleep    2

E edito o campo input Titulo
    Click Element     locator=${Titulo} 
    Input Text        locator=${Titulo}    text=Titulo editado teste Automação

E edito o campo input Subtitulo
    Click Element     locator=${Subtitulo_Notifica}
    Input Text        locator=${Subtitulo_Notifica}    text=Subtitulo editado teste Automação

E edito o campo descritivo
    Click Element     locator=//div[@class='ql-editor'][contains(.,'Descritivo')]
    Input Text        locator=//div[@class='ql-editor'][contains(.,'Descritivo')]   text=Descritivo editado teste Automação

E verifico se a notificação foi editada com sucesso
    Sleep    2
    Click Element    locator=//input[contains(@id,'filter')]
    Input Text       locator=//input[contains(@id,'filter')]    text=Titulo editado teste Automação
    Wait Until Element Is Visible    locator=//span[contains(.,'Titulo editado teste Automação')]

#Deletar
E filtro a notificação editada
    Click Element     locator=//input[contains(@id,'filter')]
    Input Text        locator=//input[contains(@id,'filter')]    text=Titulo editado teste Automação
    Wait Until Element Is Visible    locator=//span[contains(.,'Titulo editado teste Automação')]

E clico em Deletar
    Click Button    locator=//*[@icon="pi pi-trash"]

Então confirmo a deleção
    # Wait Until Element Is Visible    locator=//*[@id="mat-mdc-dialog-0"]
    # Set Focus To Element    locator=//*[@id="mat-mdc-dialog-0"]
    Wait Until Element Is Visible    locator=(//div[contains(.,'CancelarConfirmar')])[9]
    Set Focus To Element    locator=(//div[contains(.,'CancelarConfirmar')])[9]
    Click Button   locator=//button[contains(.,'Confirmar')]
    
    

E verifico se a notificação foi deletada
    Click Element     locator=//input[contains(@id,'filter')]
    Input Text        locator=//input[contains(@id,'filter')]    text=Titulo editado teste Automação

    