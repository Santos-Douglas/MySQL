/*ATIVIDADE 3 */

CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR (255),
    generico VARCHAR (255),
    
    PRIMARY KEY (id)
);

CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR (255),
    especialidade VARCHAR (255),
    setor VARCHAR (255),
    preco DECIMAL (9.2),
    fk_categoria BIGINT,
    
    PRIMARY KEY (id),
    FOREIGN KEY (fk_categoria) REFERENCES tb_categorias(id)
);

	INSERT INTO tb_categorias(nome, generico) VALUES("Remedio", "Sim");
    INSERT INTO tb_categorias(nome, generico) VALUES("Remedio", "Sim");
    INSERT INTO tb_categorias(nome, generico) VALUES("Suplemento", "Não");
    INSERT INTO tb_categorias(nome, generico) VALUES("Higiene", "Não");
    INSERT INTO tb_categorias(nome, generico) VALUES("Remedio", "Sim");
    
    INSERT INTO tb_produtos(nome, especialidade, setor, preco, fk_categoria)
	VALUES("Dipirona", "Clinico Geral", "Caixa", 7.50, 1);
    
    INSERT INTO tb_produtos(nome, especialidade, setor, preco, fk_categoria)
	VALUES ("Engov", "PriSocorros", "Caixa", 2.15, 5);
    
    INSERT INTO tb_produtos(nome, especialidade, setor, preco, fk_categoria)
	VALUES ("CremeDental", "Odontologico", "Caixa", 15.79, 4);
    
    INSERT INTO tb_produtos(nome, especialidade, setor, preco, fk_categoria)
	VALUES ("WheyProtein", "Nutrição", "Caixa", 190.12, 3);
    
    INSERT INTO tb_produtos(nome, especialidade, setor, preco, fk_categoria)
	VALUES ("BCAA", "Nutrição", "Caixa", 99.80, 3);
    
    INSERT INTO tb_produtos(nome, especialidade, setor, preco, fk_categoria)
	VALUES ("Mitocracil", "Cardiologia", "Caixa", 280.30, 2);
    
    INSERT INTO tb_produtos(nome, especialidade, setor, preco, fk_categoria)
	VALUES ("OlaJaFoi", "Dermatologi","Caixa", 110.15, 1); 
    
    INSERT INTO tb_produtos(nome, especialidade, setor, preco, fk_categoria)
	VALUES ("Salompas", "Nutrição", "Caixa", 38.40, 2);
    
    SELECT * FROM tb_produtos WHERE preco > 50.00;
    
    SELECT * FROM tb_produtos WHERE preco > 5.00 and preco < 60.00;
    
    SELECT * FROM tb_produtos WHERE nome LIKE "%C%";
    
    SELECT * FROM tb_produtos INNER JOIN tb_categorias on fk_categoria = tb_categorias.id;
    
    SELECT * FROM tb_produtos INNER JOIN tb_categorias on fk_categoria = tb_categorias.id WHERE tb_categorias.nome = "Remedio";