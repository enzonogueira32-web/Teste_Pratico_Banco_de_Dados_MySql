CREATE DATABASE IF NOT EXISTS LocadoraCarrosDB;
USE LocadoraCarrosDB;

CREATE TABLE Clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cnh VARCHAR(20)
);

CREATE TABLE Veiculos (
    id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
    modelo VARCHAR(100),
    placa VARCHAR(10)
);

CREATE TABLE Locacoes (
    id_locacao INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_veiculo INT,
    data_inicio DATE,
    data_fim DATE,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_veiculo) REFERENCES Veiculos(id_veiculo)
);

INSERT INTO Clientes (nome, cnh) VALUES
('Ana Costa', '123456789'),
('Bruno Alves', '987654321'),
('Fernanda Rocha', '456789123');

INSERT INTO Veiculos (modelo, placa) VALUES
('Civic', 'ABC-1234'),
('Corolla', 'DEF-5678'),
('HB20', 'GHI-9012');

INSERT INTO Locacoes (id_cliente, id_veiculo, data_inicio, data_fim) VALUES
(1, 1, '2026-04-01', '2026-04-05'),
(2, 2, '2026-04-10', '2026-04-12'),
(3, 3, '2026-04-15', '2026-04-20');
