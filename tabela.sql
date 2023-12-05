-- Criar a base de dados
CREATE DATABASE IF NOT EXISTS Biblioteca;
USE Biblioteca;

-- Criar a tabela de autores
CREATE TABLE IF NOT EXISTS Autores (
    AutorID INT PRIMARY KEY,
    Nome VARCHAR(100)
);

-- Inserir dados na tabela de autores
INSERT INTO Autores (AutorID, Nome) VALUES
    (1, 'Machado de Assis'),
    (2, 'Clarice Lispector'),
    (3, 'Guimarães Rosa');

-- Criar a tabela de livros
CREATE TABLE IF NOT EXISTS Livros (
    LivroID INT PRIMARY KEY,
    Titulo VARCHAR(100),
    AnoPublicacao INT,
    AutorID INT,
    FOREIGN KEY (AutorID) REFERENCES Autores(AutorID)
);

-- Inserir dados na tabela de livros
INSERT INTO Livros (LivroID, Titulo, AnoPublicacao, AutorID) VALUES
    (101, 'Dom Casmurro', 1899, 1),
    (102, 'Grande Sertão Veredas', 1956, 3),
    (103, 'A Hora da Estrela', 1977, 2);

-- Consulta utilizando INNER JOIN para obter informações de livros e autores
SELECT Livros.Titulo, Livros.AnoPublicacao, Autores.Nome
FROM Livros
INNER JOIN Autores ON Livros.AutorID = Autores.AutorID;
