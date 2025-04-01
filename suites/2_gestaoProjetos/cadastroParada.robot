*** Settings ***
Resource    ../../resources/main.robot
Test Setup    Acessar o sistema Mapa 52 semanas
Test Teardown    Logout


*** Variables ***

*** Test Cases ***    
CT07 Cadastro de Paradas
    Dado que acesso o menu Gestão de Paradas
    E clico em Cadastrar Paradas
    E aguardo exibir dados em tela
    E seleciono o Centro de Planejamento "1072 - Conceição"
    E seleciono o Centro de Localização "1072 - Conceição"
    E verifico a fase "Mina"
    E preencho o campo Descrição completa com o valor "Parada por automação"
    E clico em Dados gerais
    E clico em Planejamento e realização
    E seleciono as datas de planejamento
    E fecho o Planejamento e realização
    E clico em Seleção de ativos
    E seleciono o grupo de ativos "QA- TESTE"
    E fecho Seleção de ativos
    E clico em Informações da parada
    Salvar cadastro
    Então retorno para o dashboard

