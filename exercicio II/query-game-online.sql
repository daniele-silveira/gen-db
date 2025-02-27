CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes 
    (id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255));

CREATE TABLE tb_personagens 
    (id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    poder_ataque BIGINT,
    poder_defesa BIGINT,
    agilidade BIGINT,
    classe_id INT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id));
    
INSERT INTO tb_classes (nome, descricao) 
VALUES
('Lutador', 'Especialista em combate corpo a corpo'),
('Mago', 'Especialista em magia'),
('Arqueiro', 'Especialista em ataques à distância'),
('Defensor', 'Especialista em defesa e proteção'),
('Assassino', 'Especialista em ataques furtivos');

SELECT * FROM tb_classes;


INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, agilidade, classe_id) 
VALUES
('Ryu', 2500, 1500, 80, 1),
('Ken', 2200, 1200, 90, 1),
('Chun-Li', 2000, 1800, 95, 1),
('Guile', 1800, 2000, 70, 4),
('Dhalsim', 2300, 1000, 60, 2),
('Blanka', 2100, 1600, 85, 1),
('Sagat', 2600, 1400, 75, 1),
('Vega', 1900, 1700, 92, 5);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id WHERE tb_classes.nome = 'Lutador';

-- DROP DATABASE db_generation_game_online;


