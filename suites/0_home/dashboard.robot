*** Settings ***
Resource    ../../resources/main.robot
Test Setup    Acessar o sistema Mapa 52 semanas
Test Teardown    Logout

*** Test Cases ***
TC01 - Aplicar filtro na home
    Dado que aplico filtro para o centro de planejamento "1068 - Ponta da Madeira"
    Quando aplico o filtro para o centro de localização "1068 - Ponta da Madeira"
    E seleciono a fase "Porto"
    E clico em Aplicar
    Então o sistema apresenta nos cards os dados referente aos centros pesquisados

   
TC02 - Validar botões interativos
     #Fechar modal
     Dado que aplico filtro para o centro de planejamento "1072 - Conceição"
     Quando aplico o filtro para o centro de localização "1072 - Conceição"
     E seleciono a fase "Mina"
     E clico em Aplicar
     E aguardo exibir dados em tela
     Clicar em Ver paradas
     Então o sistema direciona para tela de gestão de paradas
     E verifico a rota "Gestão de Paradas"
     E aguardo exibir dados em tela
     Então retorno para a Home
     Clicar em Ver solicitações
     Então o sistema direciona para tela de solicitar alteração de paradas
     E verifico a rota "Solicitar Workflow"
     E aguardo exibir dados em tela
     Então retorno para a Home
     Clicar em Acessar Calendário
     Então o sistema direciona para tela de calendário de paradas
