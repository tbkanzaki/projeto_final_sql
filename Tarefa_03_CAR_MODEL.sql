-- SQLite
--3 - Construa uma query SQL para criar a tabela CAR_MODEL (modelos) no banco de dados, 
--e logo em seguida insira os modelos abaixo:
CREATE TABLE CAR_MODEL (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    MODEL_NAME VARCHAR(100) NOT NULL
);

INSERT INTO CAR_MODEL (MODEL_NAME)
VALUES 
('Conversível'),
('Sedã'),
('Hatch'),
('Coupé'),
('Perua'),
('SUV'),
('Picape'),
('Minivan'),
('Utilitário'),
('Buggy');