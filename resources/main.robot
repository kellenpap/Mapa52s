*** Settings ***
Library     SeleniumLibrary


### Data ###
Resource    data/geral.robot

### Shared ###
Resource    shared/setup_teardown.robot

### Pages ###
Resource    pages/login_page.robot
Resource    pages/dashboard_page.robot
Resource    pages/notificacao_page.robot
Resource    pages/parada_page.robot
