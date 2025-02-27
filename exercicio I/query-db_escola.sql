CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes 
    (id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    idade INT NOT NULL,
    turma VARCHAR(30) NOT NULL,
    nota DECIMAL(4,2) NOT NULL,
    email VARCHAR(255));
    
INSERT INTO tb_estudantes (nome, idade, turma, nota, email)
VALUES
("Ana", 15, "9A", 8.5, "ana.clara@email.com"),
("João", 16, "9B", 6.8, "joao.pedro@email.com"),
("Maria", 14, "8A", 9.2, "maria.fernanda@email.com"),
("Lucas", 15, "9A", 5.7, "lucas.silva@email.com"),
("Beatriz", 17, "3C", 7.5, "beatriz.costa@email.com"),
("Rafael", 16, "2B", 4.9, "rafael.oliveira@email.com"),
("Carla", 14, "8B", 7.8, "carla.nunes@email.com"),
("Gabriel", 15, "9C", 6.0, "gabriel.santos@email.com");

SELECT * FROM tb_estudantes WHERE nota > 7.0;

SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes SET nota = 6.5 WHERE id = 4;

SELECT * FROM tb_estudantes;

-- DROP DATABASE db_escola;




