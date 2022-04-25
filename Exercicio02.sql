CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,
descricao VARCHAR (255) not null,
ativo BOOLEAN not null,

PRIMARY KEY (id)
);

INSERT tb_categoria (descricao, ativo) VALUES ("Bovino" , true);
INSERT tb_categoria (descricao, ativo) VALUES ("Suino" , true);
INSERT tb_categoria (descricao, ativo) VALUES ("Aves" , true);
INSERT tb_categoria (descricao, ativo) VALUES ("Pertence Feijoada" , true);
INSERT tb_categoria (descricao, ativo) VALUES ("Imbutidos" , true);
INSERT tb_categoria (descricao, ativo) VALUES ("Outros" , true);

SELECT *FROM tb_categoria;

CREATE TABLE tb_produtos(
id BIGINT(5) AUTO_INCREMENT,
nome VARCHAR (255) not null,
preco DECIMAL not null,
qntProduto INT not null,
categoria_id BIGINT,

PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT tb_produtos (nome, preco, qntProduto, categoria_id) VALUES ("Asa",40.00,30,3);
INSERT tb_produtos (nome, preco, qntProduto, categoria_id) VALUES ("Picanha",20.00,30,1);
INSERT tb_produtos (nome, preco, qntProduto, categoria_id) VALUES ("coxa de frango",20.00,30,3);
INSERT tb_produtos (nome, preco, qntProduto, categoria_id) VALUES ("Bacon",30.00,30,1);
INSERT tb_produtos (nome, preco, qntProduto, categoria_id) VALUES ("Hamburguer",60.00,30,5);
INSERT tb_produtos (nome, preco, qntProduto, categoria_id) VALUES ("Cupim",20.00,30,1);
INSERT tb_produtos (nome, preco, qntProduto, categoria_id) VALUES ("Peito de frango",25.00,30,3);
INSERT tb_produtos (nome, preco, qntProduto, categoria_id) VALUES ("Orelha de porco",20.00,30,4);
INSERT tb_produtos (nome, preco, qntProduto, categoria_id) VALUES ("Salame",18.00,30,5);
INSERT tb_produtos (nome, preco, qntProduto, categoria_id) VALUES ("Medalhao",50.00,30,3);
INSERT tb_produtos (nome, preco, qntProduto, categoria_id) VALUES ("Mocoto",20.00,30,2);
INSERT tb_produtos (nome, preco, qntProduto, categoria_id) VALUES ("chuleta",20.00,30,1);
INSERT tb_produtos (nome, preco, qntProduto) VALUES ("Acendedor de Churrasqueira",20.00,30);

SELECT *FROM tb_produtos;

SELECT *FROM tb_produtos INNER JOIN tb_categoria ON tb_categoria.id = tb_produtos.categoria_id;




