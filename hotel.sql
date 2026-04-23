CREATE DATABASE IF NOT EXISTS HotelDB;
USE HotelDB;

CREATE TABLE Hospedes (
    id_hospede INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    documento VARCHAR(20)
);

CREATE TABLE Quartos (
    id_quarto INT AUTO_INCREMENT PRIMARY KEY,
    numero INT,
    tipo VARCHAR(50)
);

CREATE TABLE Reservas (
    id_reserva INT AUTO_INCREMENT PRIMARY KEY,
    id_hospede INT,
    id_quarto INT,
    data_entrada DATE,
    data_saida DATE,
    FOREIGN KEY (id_hospede) REFERENCES Hospedes(id_hospede),
    FOREIGN KEY (id_quarto) REFERENCES Quartos(id_quarto)
);

INSERT INTO Hospedes (nome, documento) VALUES
('Lucas Silva', '111111111'),
('Mariana Lima', '222222222'),
('Rafael Souza', '333333333');

INSERT INTO Quartos (numero, tipo) VALUES
(101, 'Simples'),
(102, 'Duplo'),
(103, 'Luxo');

INSERT INTO Reservas (id_hospede, id_quarto, data_entrada, data_saida) VALUES
(1, 1, '2026-05-01', '2026-05-05'),
(2, 2, '2026-05-10', '2026-05-15'),
(3, 3, '2026-05-20', '2026-05-25');
