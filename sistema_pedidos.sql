CREATE DATABASE IF NOT EXISTS SistemaPedidosDB;
USE SistemaPedidosDB;

CREATE TABLE Clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cidade VARCHAR(100)
);

CREATE TABLE Produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10,2)
);

CREATE TABLE Pedidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_produto INT,
    quantidade INT,
    data_pedido DATE,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto)
);

INSERT INTO Clientes (nome, cidade) VALUES
('João', 'Fortaleza'),
('Maria', 'Sobral'),
('Carlos', 'Fortaleza');

INSERT INTO Produtos (nome, preco) VALUES
('Mouse', 100.00),
('Teclado', 200.00),
('Monitor', 800.00);

INSERT INTO Pedidos (id_cliente, id_produto, quantidade, data_pedido) VALUES
(1, 1, 2, '2026-04-01'),
(2, 2, 1, '2026-04-02'),
(3, 3, 1, '2026-04-03'),
(1, 2, 1, '2026-04-04');

SELECT * FROM Clientes;
SELECT * FROM Produtos;
SELECT * FROM Pedidos;

SELECT nome, cidade FROM Clientes WHERE cidade = 'Fortaleza';

UPDATE Produtos
SET preco = 120.00
WHERE nome = 'Mouse';

UPDATE Clientes
SET cidade = 'Juazeiro'
WHERE nome = 'Maria';

DELETE FROM Pedidos
WHERE quantidade = 1;

SELECT id_cliente, COUNT(*) AS total_pedidos
FROM Pedidos
GROUP BY id_cliente;

SELECT id_produto, SUM(quantidade) AS total_vendido
FROM Pedidos
GROUP BY id_produto;
