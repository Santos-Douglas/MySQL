/*ATIVIDADE 2 */

CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR (255),
    qntPizzas INT,
    
    PRIMARY KEY (id)
);
    
CREATE TABLE tb_pizzas (
	id BIGINT AUTO_INCREMENT,
    saborPizza VARCHAR (255),
    tamanho VARCHAR (255),
    bordaRecheada VARCHAR (255),
    preco DECIMAL (9.2),
    fk_categoria BIGINT,
    
    PRIMARY KEY (id),
    FOREIGN KEY (fk_categoria) REFERENCES tb_categorias (id)
);

INSERT INTO tb_categorias (nome , qntPizzas ) VALUES ("SALGADA", 3);
INSERT INTO tb_categorias (nome , qntPizzas ) VALUES ("VEGANA" , 2);
INSERT INTO tb_categorias (nome , qntPizzas ) VALUES ("DOCE" , 1);
INSERT INTO tb_categorias (nome , qntPizzas ) VALUES ("CLASSICA", 4);
INSERT INTO tb_categorias (nome , qntPizzas ) VALUES ("APIMENTADAS" , 1);

INSERT INTO tb_pizzas (saborPizza, tamanho, bordaRecheada, preco, fk_categoria) VALUES ("Bacon" , "Media", "SIM", 42.00, 5);
INSERT INTO tb_pizzas (saborPizza, tamanho, bordaRecheada, preco, fk_categoria) VALUES ("Giordano", "Media", "NÃO", 54.10, 2);
INSERT INTO tb_pizzas (saborPizza, tamanho, bordaRecheada, preco, fk_categoria) VALUES ("Prestigio", "Media", "NÃO", 44.50, 3);
INSERT INTO tb_pizzas (saborPizza, tamanho, bordaRecheada, preco, fk_categoria) VALUES ("Portuguesa", "Media", "SIM", 38.80, 1);
INSERT INTO tb_pizzas (saborPizza, tamanho, bordaRecheada, preco, fk_categoria) VALUES ("Palmito", "Media", "SIM", 68.30, 1);
INSERT INTO tb_pizzas (saborPizza, tamanho, bordaRecheada, preco, fk_categoria) VALUES ("Calabresa","Grande", "SIM", 45.50, 1);
INSERT INTO tb_pizzas (saborPizza, tamanho, bordaRecheada, preco, fk_categoria) VALUES ("Mussarela", "Grande", "SIM", 38.80, 4);
INSERT INTO tb_pizzas (saborPizza, tamanho, bordaRecheada, preco, fk_categoria) VALUES ( "QuatroQueijos", "Media", "NÃO", 38.80, 4);

SELECT * FROM tb_pizzas WHERE preco > 45;

SELECT * FROM tb_pizzas WHERE preco > 50 and preco < 100;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias on tb_pizzas.fk_categoria = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias on tb_pizzas.fk_categoria = tb_categorias.id WHERE tb_categorias.nome = "DOCE";