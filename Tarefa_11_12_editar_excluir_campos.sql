-- SQLite
--11 - Construa uma query SQL para editar o ano do automóvel 
--com nome Fiat Cronos de “2022” para “2019” da tabela de CARS
SELECT * FROM CARS ORDER BY NAME;
SELECT * FROM CARS WHERE NAME LIKE 'Fiat Cronos';

UPDATE CARS SET YEAR = 2019 WHERE ID = 4;

SELECT * FROM CARS WHERE ID = 4;


--12 - Construa uma query SQL para excluir o automóvel 
--com nome Hyundai HB20 1.6 da tabela de CARS

SELECT * FROM CARS ORDER BY NAME;
SELECT * FROM CARS WHERE NAME LIKE 'Hyundai HB20 1.6';

DELETE FROM CARS WHERE ID = 2;

SELECT * FROM CARS ORDER BY NAME;