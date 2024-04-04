SHOW DATABASES;

DROP DATABASE IF EXISTS Pizzaria;

CREATE DATABASE Pizzaria;

USE Pizzaria;

SHOW TABLES;

CREATE TABLE Cliente(
	CPF CHAR(11),
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    senha VARCHAR(50) NOT NULL,
    telefone CHAR(11) NOT NULL,
    PRIMARY KEY(CPF)
);

DESC Cliente;

CREATE TABLE Pizza(
	id INT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    preco DOUBLE NOT NULL,
    PRIMARY KEY(id)
);

DESC Pizza;

CREATE TABLE Pedido(
	id INT AUTO_INCREMENT,
    CPF_cliente CHAR(11) NOT NULL,
    id_pizza INT NOT NULL,
    data_hora DATETIME NOT NULL,
    endereco VARCHAR(50) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(CPF_cliente) REFERENCES Cliente(CPF),
    FOREIGN KEY(id_pizza) REFERENCES Pizza(id)
);

DESC PEDIDO;

CREATE TABLE Funcionario(
	CPF CHAR(11),
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    senha VARCHAR(50) NOT NULL,
    telefone CHAR(11) NOT NULL,
    salario DOUBLE NOT NULL,
    PRIMARY KEY(CPF)
);

DESC Funcionario;
