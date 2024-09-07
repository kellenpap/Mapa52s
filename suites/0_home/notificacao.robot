*** Settings ***
Resource    ../../resources/main.robot
Test Setup    Acessar o sistema Mapa 52 semanas
Test Teardown    Logout

*** Test Cases ***
CT04 Cadastro de notificação
    Dado que acesso o menu de usuário
    Quando clico em Ajuda
    E acesso ao menu de notificações
    E clico para cadastrar uma notificação 
    E seleciono a categoria
    E seleciono a data inicio
    E preencho o campo input Titulo
    E preencho o campo input Subtitulo
    E preencho o campo descritivo
    E clico em salvar 
    E verifico se a notificação foi criada com sucesso  

CT05 Editar de notificação
    Dado que acesso o menu de usuário
    Quando clico em Ajuda
    E acesso ao menu de notificações
    E filtro a notificação
    E clico em editar
    E edito o campo input Titulo
    E edito o campo input Subtitulo
    E edito o campo descritivo
    E clico em salvar 
    E verifico se a notificação foi editada com sucesso 

# CT06 Deletar de notificação
#     Dado que acesso o menu de usuário
#     Quando clico em Ajuda
#     E acesso ao menu de notificações
#     E filtro a notificação editada
#     E clico em Deletar
#     Então confirmo a deleção
#     E verifico se a notificação foi deletada