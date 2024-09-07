*** Settings ***
Resource    ../main.robot


*** Variables ***
&{geral}
...    URL= https://mapa52-frontend-dev.azurewebsites.net/
...    Browser=chrome  
...    options=add_experimental_option("detach", True)
${SUBTITULO}               //div[@class='title']//h4[contains(.,'Notificações sistêmicas')]
${ROTA_NOTIFICACAO}        //span[@class='p-menuitem-text ng-star-inserted'][contains(.,'Notificações')]
${ROTA_GESTAO}            //a[@role='tab'][contains(@id,'action')][contains(.,'Lista')]
${ROTA_WORKFLOW}          //span[@class='p-menuitem-text ng-star-inserted'][contains(.,'Solicitar Workflow')]
${HOME_MENU}               id:homeMenu
${VER_PARADAS}             id:seeShutdownsButton
${VER_SOLICITACAO}         id:seeSolicitationsButton
${ACESSAR_CALENDARIO}      id:seeCalendar
${BTN_MENU_ACAO}           id:floating-menu-btn
${ADICIONAR}               id:floating-menu-btn-Adicionar
${SALVAR}                  //button[contains(@id,'save')]
${CENTRO_PLANEJAMENTO}     id:planningCenter
${CENTRO_LOCALIZACAO}      id:localizationCenter
${FASE_HOME}               id:phase
