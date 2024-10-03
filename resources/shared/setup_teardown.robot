*** Settings ***
Resource    ../main.robot
Library     Screenshot


*** Keywords ***
Acessar o sistema Mapa 52 semanas
    Dado que acesso o mapa 52 semanas
    Quando faço o Login
    E verifico se o título da página é "Map52Weeks"
    Fechar modal

Logout
    #Take Screenshot
    Então encerro sessão
    Close Browser


