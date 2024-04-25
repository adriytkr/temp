CREATE DATABASE Restaurante;

CREATE TABLE Cliente(
	CPF
    nome
    email
    senha
    PRIMARY KEY(CPF)
);

CREATE TABLE Funcionario(
	CPF
    nome
    email
    senha
    PRIMARY KEY(CPF)
);

CREATE TABLE Fornecedor(
	id
    nome
    PRIMARY KEY(id)
);

CREATE TABLE Filial(
	id
    nome
    PRIMARY KEY(id)
);

CREATE TABLE Prato(
	id
    nome
    preco
    PRIMARY KEY(id)
);

CREATE TABLE Bebida(
	id
    nome
    preco
    PRIMARY KEY(id)
);

CREATE TABLE Ingrediente(
	id
    nome
    quantidade
    id_fornecedor
    PRIMARY KEY(id)
    FOREIGN KEY(id_fornecedor) REFERENCES(Fornecedor.id)
);

CREATE TABLE Cliente_Pedido(
	id
    cpf_cliente
    id_prato_bebida
    data_hora
    PRIMARY KEY(id)
    FOREIGN KEY(cpf_cliente) REFERENCES(Cliente.CPF)
    FOREIGN KEYS(id_prato_bebida) REFERENCES(Prato.id or Bebida.id)
);

CREATE TABLE Fornecedor_Ingrediente(
	id
    id_filial
    id_ingrediente
    quantidade
    data_hora
    PRIMARY KEY(id)
    FOREIGN KEY(id_filial) REFERENCES(Filial.id)
    FOREIGN KEY(id_ingrediente) REFERENCES(Ingrediente.id)
);

CREATE TABLE Entrega(
	id
    cpf_entregador
    cpf_cliente
    endereco
    data_hora
    PRIMARY KEY(id)
    FOREIGN KEY(cpf_entregador) REFERENCES(Funcionario.CPF)
    FOREIGN KEY(cpf_cliente) REFERENCES(Cliente.CPF)
);

CREATE TABLE Reserva(
	id
	id_mesa
    cpf_cliente
    quantidade
    PRIMARY KEY(id)
    FOREIGN KEY(id_mesa) REFERENCES(Mesa.id)
);

CREATE TABLE Mesa(
	id
    capacidade
    PRIMARY KEY(id)
);
