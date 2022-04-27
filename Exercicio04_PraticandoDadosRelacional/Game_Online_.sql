/* ATIVIDADE 1*/

CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR (255),
	taco_sinuca VARCHAR (255),

	PRIMARY KEY (id)
);

CREATE TABLE tb_personagens (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR (255),
    mesa VARCHAR (255),
    qntFichas INT,
    fk_classe BIGINT,
    
    PRIMARY KEY (id),
    FOREIGN KEY (fk_classe) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome, taco_sinuca) VALUES ("BigJhown" , "Madeira" ),
("Bola8", "Aço" ),
("SrDaVitoria", "Ferro" ),
("WinAlways", "Folha" ),
("Gratidão", "Classico" );

INSERT INTO tb_personagens (nome , mesa , qntFichas , fk_classe )
VALUES ("Branca_de_neve" , "grande" , 4 , 3);

INSERT INTO tb_personagens (nome , mesa , qntFichas , fk_classe )
VALUES ("Atchim" , "grande" , 3 , 2);

INSERT INTO tb_personagens (nome , mesa , qntFichas , fk_classe )
VALUES ("Dengoso" , "média" , 2 , 1);

INSERT INTO tb_personagens (nome , mesa , qntFichas , fk_classe )
VALUES ("Dunga" , "grande" , 3 , 1);

INSERT INTO tb_personagens (nome , mesa , qntFichas , fk_classe )
VALUES ("Feliz" , "média" , 5 , 3);

INSERT INTO tb_personagens (nome , mesa , qntFichas , fk_classe )
VALUES ("Mestre" , "média" , 8 , 2);

INSERT INTO tb_personagens (nome , mesa , qntFichas , fk_classe )
VALUES ("Soneca" , "grande" , 6 , 4);

INSERT INTO tb_personagens (nome , mesa , qntFichas , fk_classe )
VALUES ("ZANGADO" , "grande" , 5 , 1);

SELECT *FROM tb_personagens WHERE qntFichas < 3;

SELECT *FROM tb_personagens WHERE fk_classe > 2;

SELECT *FROM tb_personagens WHERE nome LIKE "%c%";

SELECT *FROM tb_personagens INNER JOIN tb_classes ON fk_classe = tb_classes.id;

SELECT *FROM tb_personagens INNER JOIN tb_classes ON fk_classe = tb_classes.id WHERE tb_classes.nome = "SrDaVitoria";

