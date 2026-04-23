CREATE DATABASE IF NOT EXISTS LojaInformaticaDB;
USE LojaInformaticaDB;

CREATE TABLE Produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10,2)
);

CREATE TABLE Vendedores (
    id_vendedor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    turno VARCHAR(50)
);

CREATE TABLE Vendas (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    id_produto INT,
    id_vendedor INT,
    data_venda DATE,
    FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto),
    FOREIGN KEY (id_vendedor) REFERENCES Vendedores(id_vendedor)
);

INSERT INTO Produtos (nome, preco) VALUES
('Mouse Gamer', 150.00),
('Teclado Mecânico', 350.00),
('Monitor 24"', 900.00);

INSERT INTO Vendedores (nome, turno) VALUES
('Carlos', 'Manhã'),
('Juliana', 'Tarde'),
('Paulo', 'Noite');

INSERT INTO Vendas (id_produto, id_vendedor, data_venda) VALUES
(1, 1, '2026-04-01'),
(2, 2, '2026-04-02'),
(3, 3, '2026-04-03');
