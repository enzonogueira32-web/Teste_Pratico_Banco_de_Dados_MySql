Sistemas de Banco de Dados em MySQL

Sobre o Projeto

Este projeto reúne múltiplos sistemas de banco de dados desenvolvidos em MySQL, com foco em modelagem relacional, manipulação de dados e análise utilizando SQL.

Os sistemas simulam cenários reais como clínica médica, locadora de veículos, hotel, loja de informática e sistema de pedidos.

🛠️ Tecnologias Utilizadas
MySQL
SQL
phpMyAdmin / MySQL Workbench
📁 Estrutura do Projeto
clinica.sql → Sistema de consultas médicas
locadora.sql → Sistema de locação de veículos
hotel.sql → Sistema de reservas de hotel
loja.sql → Sistema de vendas
sistema_pedidos.sql → Sistema completo com operações avançadas

Sistemas Implementados

Clínica Médica

Gerencia:

Pacientes
Médicos
Consultas

 Locadora de Veículos

Gerencia:

Clientes
Veículos
Locações
🏨 Hotel

Gerencia:

Hóspedes
Quartos
Reservas
💻 Loja de Informática

Gerencia:

Produtos
Vendedores
Vendas

Sistema de Pedidos

Gerencia:

Clientes
Produtos
Pedidos

Inclui operações completas de manipulação e análise de dados.

 Funcionalidades Implementadas
 Inserção de Dados (INSERT)
Cadastro de clientes, produtos, pedidos e outros registros

 Consulta de Dados (SELECT)
Listagem de tabelas
Filtros por condições

 Atualização (UPDATE)
Alteração de dados existentes

 Exclusão (DELETE)
Remoção de registros com base em condições

 Análise de Dados (GROUP BY)
Contagem de registros por categoria
Soma de valores agrupados

🔗 Relacionamentos

Todos os sistemas utilizam:

 Chaves primárias (PRIMARY KEY)
 Chaves estrangeiras (FOREIGN KEY)

Exemplos:

Consultas → pacientes + médicos
Locações → clientes + veículos
Reservas → hóspedes + quartos
Vendas → produtos + vendedores
Pedidos → clientes + produtos

Como Executar

Abra o MySQL Workbench ou phpMyAdmin
Importe qualquer um dos arquivos .sql
Execute o script
O banco será criado automaticamente com dados
