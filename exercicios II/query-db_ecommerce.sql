CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos
(id BIGINT AUTO_INCREMENT,
nome_prod VARCHAR(255)  NOT NULL,
quantidade INT,
preco DECIMAL (8,2),
datavalidade DATE,
PRIMARY KEY(id) );

INSERT INTO tb_produtos (nome_prod, quantidade, preco, datavalidade)
VALUES 
("Smartphone XYZ", 50, 1999.99, '2026-12-31'),
("Notebook Gamer ABC", 30, 5999.90, '2027-06-30'),
("Fone de Ouvido Bluetooth", 100, 299.99, '2025-09-15'),
("Smartwatch Série 5", 75, 1299.50, '2026-03-01'),
("Câmera DSLR Pro", 20, 4599.00, '2028-01-01'),
("Teclado Mecânico RGB", 120, 349.90, '2025-12-31'),
("Monitor UltraWide 34", 15, 2499.99, '2027-11-30'),
("Mouse Gamer XYZ", 200, 149.99, '2025-10-10');

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET quantidade = 350 WHERE  id=3;







