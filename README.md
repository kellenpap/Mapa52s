  **Mapa 52 Semanas - Vale**
  
Sistema desenvolvido para validar as funcionalidades do sistema Mapa 52 Semanas da Vale.
O Mapa 52 Semanas é um sistema de apoio ao plano anual de manutenção de ativos, 
auxiliando no planejamento e execução das manutenções registradas em ordens, 
notas e projeções sistemáticas do SAP.

Para inicar os testes é necessário realizar algumas alterações de data.
O sistema não permite cadastros com mesmo nome e mesma data de planejamento, sendo necessário sua alteração.

**Alterar Em:**
  - Acesse a pages grupoAtivos-page e altere o nome no cadastro de grupo TC02 - Realizar Cadastro de Grupos
  - Acesse a page notificacao_page e altere a data inicial
  - Acesse a page parada_page e altere as datas de planejamento inicio e fim

Para executar as suites de teste completa, no terminal do vs code digite: robot.exe -d Results .\suites\ 
A pasta results guardará o histórico de execução.

**Funcionalidades automatizadas:**

**Regras do sistema:**

