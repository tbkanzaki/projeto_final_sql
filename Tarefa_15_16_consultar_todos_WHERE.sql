-- SQLite
--15 - Construa uma consulta capaz de exibir somente os automóveis 
--que estão com o status “Liberado”

SELECT * from CARS;

SELECT * from CARS WHERE STATUS = 'Liberado';

--16 - Construa uma consulta capaz de exibir todos os automóveis 
--do ano 2016.
SELECT * from CARS WHERE YEAR = 2016;