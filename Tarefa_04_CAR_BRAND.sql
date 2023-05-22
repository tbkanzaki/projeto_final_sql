-- SQLite
--4 - Construa uma query SQL para criar a tabela CAR_BRAND (marcas) no banco de dados, 
--e logo em seguida insira as marcas abaixo:
CREATE TABLE CAR_BRAND (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    BRAND_NAME VARCHAR(100) NOT NULL
);

INSERT INTO CAR_BRAND (BRAND_NAME)
VALUES 
('Chevrolet'),
('Toyota'),
('Hyundai'),
('Volkswagen'),
('Jeep'),
('Renault'),
('Honda'),
('Fiat');