CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cpf VARCHAR(14),
    cargo VARCHAR(50) NOT NULL,
    salario DECIMAL(10,2), 
    departamento VARCHAR(50) NOT NULL
);

INSERT INTO tb_colaboradores (nome, cpf, cargo, salario, departamento)
VALUES 
("Bob Esponja Calça Quadrada", "123.456.789-01", "Cozinheiro Sênior", 2750.00, "Alimentação"),
("Salsicha Rogers", "987.654.321-02", "Degustador Profissional", 4200.00, "Gastronomia"),
("Finn Mertens", "456.123.789-03", "Aventureiro Pleno", 6800.00, "Operações"),
("Fred Flintstone", "321.654.987-04", "Operador de Veículos Pesados", 5300.00, "Produção"),
("Lisa Simpson", "147.258.369-05", "Consultora Educacional", 7100.00, "Desenvolvimento");

SELECT * FROM tb_colaboladores;

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario > 2000 ORDER BY salario ASC;



