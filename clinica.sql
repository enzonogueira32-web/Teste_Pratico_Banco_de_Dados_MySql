CREATE DATABASE IF NOT EXISTS ClinicaDB;
USE ClinicaDB;

CREATE TABLE Pacientes (
    id_paciente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    telefone VARCHAR(20)
);

CREATE TABLE Medicos (
    id_medico INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    especialidade VARCHAR(100)
);

CREATE TABLE Consultas (
    id_consulta INT AUTO_INCREMENT PRIMARY KEY,
    id_paciente INT,
    id_medico INT,
    data_consulta DATE,
    FOREIGN KEY (id_paciente) REFERENCES Pacientes(id_paciente),
    FOREIGN KEY (id_medico) REFERENCES Medicos(id_medico)
);

INSERT INTO Pacientes (nome, telefone) VALUES
('João Silva', '99999-1111'),
('Maria Souza', '99999-2222'),
('Carlos Lima', '99999-3333');

INSERT INTO Medicos (nome, especialidade) VALUES
('Dr. Pedro', 'Cardiologia'),
('Dra. Ana', 'Dermatologia'),
('Dr. Lucas', 'Ortopedia');

INSERT INTO Consultas (id_paciente, id_medico, data_consulta) VALUES
(1, 1, '2026-04-20'),
(2, 2, '2026-04-21'),
(3, 3, '2026-04-22');
