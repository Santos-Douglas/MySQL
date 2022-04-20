CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT,
nome varchar (255),
area varchar (255),
idade int,
salario float (9.2),

PRIMARY KEY (id)
);

SELECT *FROM tb_colaboradores;

INSERT INTO tb_colaboradores (nome, area, idade, salario)
VALUES ("Diego", "Financeira", 34, 5200.00);

INSERT INTO tb_colaboradores (nome, area, idade, salario)
VALUES ("Julia", "Comercial", 20, 1200.00);

INSERT INTO tb_colaboradores (nome, area, idade, salario)
VALUES ("Jessica", "Juridico", 25, 6200.00);

INSERT INTO tb_colaboradores (nome, area, idade, salario)
VALUES ("Jumar", "Recursos Humanos", 34, 4500.00);

INSERT INTO tb_colaboradores (nome, area, idade, salario)
VALUES ("Carol", "Tecnologia", 23, 3300.00);

SELECT *FROM tb_colaboradores;
SELECT nome, salario FROM tb_colaboradores WHERE salario < 2000;

SELECT nome, salario FROM tb_colaboradores WHERE salario > 2000;

UPDATE tb_colaboradores SET idade = 34 WHERE id = 35;


------------------------------- Exercicio 2 ---------------------------------------
CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_loja(
id BIGINT AUTO_INCREMENT,
nome_comprador VARCHAR (255),
produto VARCHAR (255),
valor FLOAT (9,2),
quantidade INT,

PRIMARY KEY (id)
);
DROP TABLE tb_loja;
SELECT *FROM tb_loja;

INSERT INTO tb_loja ( nome_comprador, produto, valor, quantidade)
VALUES ( "Rivaldo", "Bicicleta", 2500.00, 1),
("Ronaldo", "chuteira", 1200.00, 1),
("Romario", "caneleira", 80.00, 2),
("Neymar", "PlayStation5", 4800.00, 1),
("Mbappe", "Camisa PSG", 300.00, 1),
("Messi", "MiniLandRover", 3800.00,1),
("Robinho", "BancoImobiliario", 180.00, 1),
("Hazard", "uno", 3.00, 2);

SELECT * FROM tb_loja;
SELECT nome, produto, valor FROM tb_loja WHERE valor < 2000;

SELECT nome, produto, valor FROM tb_loja WHERE valor > 2000;

UPDATE tb_loja SET nome_comprador = "Hazardy" WHERE id = 2;

----------------------------- Exercício 3 -----------------------------------------
CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_escola (
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255),
curso VARCHAR (255),
sala INT,
horario VARCHAR (255),
nota FLOAT (9,2),

PRIMARY KEY (id)
);
DROP TABLE tb_escola;
SELECT *FROM tb_escola;
INSERT INTO tb_escola (nome, curso, sala, horario, nota)
VALUES ("Gustavo", "Teconologia", 504, "Noturno", 5.2),
("Michael", "Contabeis", 207, "Noturno", 7.8),
("Maiar", "Filosofia", 412, "Noturno", 9.5),
("Douglas", "Ed Fisica", 645, "Noturno", 8.0),
("Israel", "Direito", 112, "Noturno", 7.9),
("Brocco", "Logistica", 444, "Noturno", 4.2),
("Osvaldo", "Pedagogia", 233, "Diurno", 3.0),
("Claudia", "Moda", 314, "Diurno", 2.7);

SELECT *FROM tb_escola;
SELECT nome, curso, nota FROM tb_escola WHERE nota < 7.0;

SELECT nome, curso, nota FROM tb_escola WHERE nota > 7.0;

UPDATE tb_escola SET curso = "Moda" WHERE id = 7;




