CREATE DATABASE db_cidade_dos_vegetais;
USE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR (255),
    produto VARCHAR (255),
    
    PRIMARY KEY (id)
);

CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR (255),
    cor VARCHAR (255),
    qnt INT,
    preco DECIMAL (9.2),
    fk_categoria BIGINT,
    
    PRIMARY KEY (id),
    FOREIGN KEY (fk_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(nome, produto) VALUES("B", "Fruta");
INSERT INTO tb_categorias(nome, produto) VALUES("A", "Verdura");
INSERT INTO tb_categorias(nome, produto) VALUES("A", "Fruta");
INSERT INTO tb_categorias(nome, produto) VALUES("C", "Verdura");
INSERT INTO tb_categorias(nome, produto) VALUES("B", "Verdura");

INSERT INTO tb_produtos(nome, cor, qnt, preco, fk_categoria)
VALUES("Banana", "Amarela", 80, 174.20, 1);

INSERT INTO tb_produtos(nome, cor, qnt, preco, fk_categoria)
VALUES ("Alface", "Verde", 10, 15.50, 2);

INSERT INTO tb_produtos(nome, cor, qnt, preco, fk_categoria)
VALUES ("Abacate", "Verde", 5, 65.00, 3);

INSERT INTO tb_produtos(nome, cor, qnt, preco, fk_categoria)
VALUES ("Couve", "Verde", 2, 5.00, 4);

INSERT INTO tb_produtos(nome, cor, qnt, preco, fk_categoria)
VALUES ("Brocolis", "Verde", 120, 180.15, 5);

INSERT INTO tb_produtos(nome, cor, qnt, preco, fk_categoria)
VALUES ("Maça", "Vermelha", 15, 35.00, 1);

INSERT INTO tb_produtos(nome, cor, qnt, preco, fk_categoria)
VALUES ("Melancia", "Verde", 6, 12.00, 3);

INSERT INTO tb_produtos(nome, cor, qnt, preco, fk_categoria)
VALUES ("Amora", "Vermelha", 130, 190.15, 3);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco > 50.00 and preco < 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias on fk_categoria = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias on fk_categoria = tb_categorias.id WHERE tb_categorias.nome = "A";

