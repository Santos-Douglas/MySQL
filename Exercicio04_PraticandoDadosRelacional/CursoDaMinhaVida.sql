/*ATIVIDADE 6 */

CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR (255),
    cargaHoraria INT,
	
    PRIMARY KEY (id)
);

CREATE TABLE tb_cursos (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR (255),
    qtdeAlunos INT,
    nivel VARCHAR (255),
    preco DECIMAL (9.2),
    fk_categoria BIGINT,
    
    PRIMARY KEY (id),
    FOREIGN KEY (fk_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(nome, cargaHoraria) VALUES ("Java", 8 );
INSERT INTO tb_categorias(nome, cargaHoraria) VALUES ("Python", 6 );
INSERT INTO tb_categorias(nome, cargaHoraria) VALUES ("HTML", 8 );
INSERT INTO tb_categorias(nome, cargaHoraria) VALUES ("Algoritmos", 6);
INSERT INTO tb_categorias(nome, cargaHoraria) VALUES ("PacoteFullStack", 8 );

INSERT INTO tb_cursos(nome, qtdeAlunos, nivel, preco, fk_categoria)
VALUES ( "Java - Do 0 ao Avançado", 50, "Avançado", 1000.00, 1);

INSERT INTO tb_cursos(nome, qtdeAlunos, nivel, preco, fk_categoria)
VALUES ("Python Progran", 120, "Intermediário", 750.00, 2);
    
INSERT INTO tb_cursos(nome, qtdeAlunos, nivel, preco, fk_categoria)
VALUES ("HTML - O inicio", 70, "Avançado", 550.00, 3);

INSERT INTO tb_cursos(nome, qtdeAlunos, nivel, preco, fk_categoria)
VALUES ("FullStack - Complete", 200, "Intermediário", 1200.00, 5);

INSERT INTO tb_cursos(nome, qtdeAlunos, nivel, preco, fk_categoria)
VALUES ("CSS", 47, "Avançado", 350.00, 4);

INSERT INTO tb_cursos(nome, qtdeAlunos, nivel, preco, fk_categoria)
VALUES ("CursoCompletoDev", 100, "Avançado", 2100.00, 5);

INSERT INTO tb_cursos(nome, qtdeAlunos, nivel, preco, fk_categoria)
VALUES ("CursoWeb", 100, "Intermediário", 450.00, 3);

INSERT INTO tb_cursos(nome, qtdeAlunos, nivel, preco, fk_categoria)
VALUES ("Torne-se um Dev", 140, "Intermediário", 110.00, 5);

SELECT * FROM tb_cursos WHERE preco > 500.00;

SELECT * FROM tb_cursos WHERE preco > 600.00 and preco < 1000.00;

SELECT * FROM tb_cursos WHERE nome LIKE "%%";

SELECT * FROM tb_cursos INNER JOIN tb_categorias on fk_categoria = tb_categorias.id;

SELECT * FROM tb_cursos INNER JOIN tb_categorias on fk_categoria = tb_categorias.id WHERE tb_categorias.nome = 4;

