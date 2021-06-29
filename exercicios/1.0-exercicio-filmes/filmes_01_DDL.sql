CREATE DATABASE Filmes;
--Criando a base de dados
USE Filmes;
--Entrando em "Filmes"
-----------------------------------------------------
CREATE TABLE Generos
--Criando a tabela "Generos"
(
--Criando os campos "idGenero","Nome"
	idGenero INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(200) NOT NULL
);
-----------------------------------------------------
--Criando a tabela "Filmes"
CREATE TABLE Filmes
(
--Criando os campos "idFilme", "idGenero", "Titulo"
	idFilme INT PRIMARY KEY IDENTITY
	,idGenero INT FOREIGN KEY REFERENCES Generos(idGenero)
	,Titulo VARCHAR(250) NOT NULL
);