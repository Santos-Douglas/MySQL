/*1.CRIE UM BANCO DE DADOS PARA UM SERVIÇO DE UMA QUITANDA, ONDE O SISTEMA TRABALHARÁ COM AS INFORMAÇÕES 
DOS PRODUTOS DA EMPRESA.
2.CRIE UMA TABELA DE PRODUTOS E DETERMINE 5 ATRIBUTOS RELEVANTES PARA SE TRABALHAR COM O SERVIÇO DESTA QUITANDA.
3. CRIE UMA TABELA DE CATEGORIAS PARA ESTES PRODUTOS. 
4. FAÇA O RELACIONAMENTO DE CATEGORIAS NA TABELA DE PRODUTO ATRAVÉS DO FOREING KEY (id_categoria)
5. INSIRA NESTAS TABELAS NO MINIMO 5 DADOS (REGISTROS).
6. FAÇA UM SELECT QUE RETORNE TODOS OS PRODUTOS.
7. FAÇA UM SELECT QUE RETORNE TODAS AS CATEGORIAS.
8. FAÇA UM SELECT QUE RETORNE TODOS OS PRODUTOS QUE CONTÉM A LETRA %a% 
9. FAÇA UM SELECT QUE RETORNE TODAS AS QUE CONTEM O VALOR MAIOR QUE 50.
10. AO TERMINO ATUALIZE UM REGISTRO DESTA TABELA ATRAVÉS DE UMA QUERY DE ATUALIZAÇÃO */

CREATE DATABASE db_quitanda;
USE db_quitanda;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)    
);

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
	id_categoria BIGINT,
    nome VARCHAR(255) NOT NULL,
    qntProduto INT NOT NULL,
    preco DECIMAL(9,2),
    
    PRIMARY KEY(id),
    FOREIGN KEY(id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(nome) VALUES("FRIOS");
INSERT INTO tb_categorias(nome) VALUES("ADEGA");
INSERT INTO tb_categorias(nome) VALUES("LIMPEZA");
INSERT INTO tb_categorias(nome) VALUES("PADARIA");
INSERT INTO tb_categorias(nome) VALUES("VINHARIA");

INSERT INTO tb_produtos(id_categoria, nome, qntProduto, preco)
VALUES(1, "Mussarela", 200, 15.50);

INSERT INTO tb_produtos(id_categoria, nome, qntProduto, preco)
VALUES (2, "Cerveja", 8, 64.10);

INSERT INTO tb_produtos(id_categoria, nome, qntProduto, preco)
VALUES (3, "Sabão", 2, 24.15);

INSERT INTO tb_produtos(id_categoria, nome, qntProduto, preco)
VALUES (4, "Pão Pullman", 2, 16.15);

INSERT INTO tb_produtos(id_categoria, nome, qntProduto, preco)
VALUES (5, "Vinho", 1, 64.80);
      
      SELECT * FROM tb_produtos;
      
      SELECT * FROM tb_categorias;
      
      SELECT * FROM tb_categorias INNER JOIN tb_produtos ON tb_produtos.id_categoria = tb_categorias.id WHERE preco > 50.00;
      
      SELECT * FROM tb_produtos WHERE nome LIKE "%a%";
      
      UPDATE tb_produtos SET preco = 84.80 where tb_produtos.id = 5;