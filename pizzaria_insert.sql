INSERT INTO Cliente
VALUES
('06340283160','Adriano','adriano@gmail.com','adriano123','1164453237'),
('41655581848','Beatriz','beatriz@gmail.com','beatriz123','2129669560'),
('61205695370','Caroline','caroline@gmail.com','caroline123','7125456663'),
('28509344884','Diego','diego@gmail.com','diego123','7952318583'),
('39195559884','Evandro','evandro@gmail.com','evandro123','1720099935');

SELECT * FROM Cliente;

INSERT INTO Pizza
(nome,preco)
VALUES
('Quatro Queijos',32),
('Portuguesa',30),
('Frango com Catupiry',30),
('Calabresa',32),
('Peperoni',25),
('Atum',25),
('Napolitana',34),
('Palmito',25),
('Mussarela',25);

SELECT id,nome FROM Pizza WHERE preco>=30;

INSERT INTO Funcionario
VALUES
(30098037617,'Flavia','flavia@gmail.com','flavia123',3572609775,4000),
(51987899334,'Gabriel','gabriel@gmail.com','gabriel123',3190952900,3200),
(29870100368,'Helena','helena@gmail.com','helena123',5174492124,2100);

SELECT * FROM Funcionario;

INSERT INTO Pedido
(CPF_cliente,id_pizza,data_hora,endereco)
VALUES
('06340283160',3,'2024-03-02 19:44:22','Rua A'),
('06340283160',2,'2024-03-02 19:44:22','Rua A'),
('28509344884',7,'2024-03-10 20:14:31','Rua B'),
('28509344884',6,'2024-03-17 20:46:11','Rua B'),
('39195559884',2,'2024-03-23 17:22:37','Rua C'),
('41655581848',4,'2024-03-24 11:50:09','Rua D');

SELECT * FROM Pedido;
