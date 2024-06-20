

CREATE DATABASE IF NOT EXISTS Restaurante;
 
USE Restaurante;

CREATE TABLE IF NOT EXISTS Cliente(
	id INT AUTO_INCREMENT,
    cpf VARCHAR(11) NOT NULL,
    nome VARCHAR(255),
    endereco VARCHAR(255),
    email VARCHAR(255),
	senha VARCHAR(255),
    telefone VARCHAR(12),
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS Funcionario(
    id INT AUTO_INCREMENT,
    cpf VARCHAR(11) NOT NULL,
    nome VARCHAR(255),
    endereco VARCHAR(255),
    email VARCHAR(255),
	senha VARCHAR(255),
    telefone VARCHAR(12),
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS Prato( 
    id INT AUTO_INCREMENT,
    ingredientes VARCHAR(255),
    descricao VARCHAR(255),
    preco DECIMAL(5,2),
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS Fornecedor(
    id INT AUTO_INCREMENT, 
    cnpj VARCHAR(14),
    email VARCHAR(255),
    telefone VARCHAR(12),
    valor_materia DECIMAL(8,2),
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS Reserva (
    data_hora DATETIME,
    id_cliente INT,
    mesa VARCHAR(2),
    FOREIGN KEY (id_cliente) REFERENCES Cliente (id)
);

CREATE TABLE IF NOT EXISTS Estoque (
    id_fornecedor INT,
    id_materia INT AUTO_INCREMENT,
    quantidade INT,
    qualidade DECIMAL(4,2),
    PRIMARY KEY (id_materia),
    FOREIGN KEY (id_fornecedor) REFERENCES Fornecedor (id)
);

CREATE TABLE IF NOT EXISTS Filial (
    id INT AUTO_INCREMENT,
    endereco VARCHAR(255),
    email VARCHAR(255),
    telefone VARCHAR(12),
    quant_mesas INT,
    avaliacao DECIMAL(4,2),
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS Bebida (
    id INT AUTO_INCREMENT,
    nome VARCHAR (255), 
    descricao VARCHAR(255),
    valor DECIMAL(4,2),
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS Pedido (
    id INT AUTO_INCREMENT,
    id_cliente INT,
    id_prato INT,
    id_bebida INT,
    preco DECIMAL(4,2),
    endereco VARCHAR(255),
    PRIMARY KEY (id),
    FOREIGN KEY (id_cliente) REFERENCES Cliente (id),
    FOREIGN KEY (id_prato) REFERENCES Prato (id),
    FOREIGN KEY (id_bebida) REFERENCES Bebida (id)
);

CREATE TABLE IF NOT EXISTS Entrega (
    id INT AUTO_INCREMENT,
    endereco VARCHAR(255),
    id_pedido INT,
    valor DECIMAL(6,2),
    PRIMARY KEY (id),
    FOREIGN KEY (id_pedido) REFERENCES Pedido (id)
);

SELECT * FROM Cliente;
SELECT Count(*) FROM Cliente;
SELECT id FROM Cliente WHERE email="adriano@gmail.com" AND senha="adriano123";

SELECT Cliente.nome, Pedido.endereco
FROM Pedido
INNER JOIN Cliente ON Pedido.id_cliente=Cliente.id
WHERE Pedido.preco>=14;
