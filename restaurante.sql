CREATE DATABASE Restaurante;

CREATE TABLE Cliente(
	CPF CHAR(11) NOT NULL,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    senha VARCHAR(50) NOT NULL,
    PRIMARY KEY(CPF)
);

CREATE TABLE Funcionario(
	CPF CHAR(11) NOT NULL,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
	senha VARCHAR(50) NOT NULL,
    PRIMARY KEY(CPF)
);

CREATE TABLE Produto(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    preco DECIMAL NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE Cliente_Produto(
	id INT NOT NULL,
    cpf_cliente CHAR(11) NOT NULL,
    id_produto INT NOT NULL,
    data_hora DATETIME NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(cpf_cliente) REFERENCES(Cliente.CPF),
    FOREIGN KEYS(id_produto) REFERENCES(Produto.id)
);

CREATE TABLE Entrega(
	id INT NOT NULL AUTO_INCREMENT,
    cpf_entregador CHAR(11) NOT NULL,
    cpf_cliente CHAR(11) NOT NULL,
    endereco VARCHAR(50) NOT NULL,
    data_hora DATETIME NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(cpf_entregador) REFERENCES(Funcionario.CPF),
    FOREIGN KEY(cpf_cliente) REFERENCES(Cliente.CPF),
);

CREATE TABLE Entrega_Produto(
	entrega_id INT NOT NULL,
    produto_id INT NOT NULL,
    FOREIGN KEY(entrega_id) REFERENCES(Entrega.id),
    FOREIGN KEY(produto_id) REFERENCES(Produto.id)
);

CREATE TABLE Reserva(
	id INT NOT NULL AUTO_INCREMENT,
	id_mesa INT NOT NULL,
    cpf_cliente CHAR(11) NOT NULL,
    quantidade_pessoa INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_mesa) REFERENCES(Mesa.id),
    FOREIGN KEY(cpf_cliente) REFERENCES(Cliente.CPF)
);

CREATE TABLE Mesa(
	id INT NOT NULL AUTO_INCREMENT,
    capacidade INT NOT NULL,
    PRIMARY KEY(id)
);
