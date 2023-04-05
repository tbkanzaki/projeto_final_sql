-- SQLite
SELECT * FROM LOCATIONS;
SELECT * from CARS;
SELECT * from CUSTOMERS;
SELECT * from EMPLOYEES;
--19 - Construa uma consulta capaz de exibir somente os clientes 
--que realizaram mais ou igual a 2 locações.
SELECT 
C.ID AS 'Código cliente', 
C.NAME AS 'Cliente', 
C.PHONE AS 'Telefone', 
C.EMAIL AS 'Email', 
C.ADDRESS AS 'Endereço', 
C.CITY AS 'Cidade', 
C.STATE AS 'Estado', 
C.BIRTH_DATE AS 'Aniversário', 
COUNT(L.CUSTOMER_ID) AS 'Qtd locação'
FROM LOCATIONS AS L
JOIN CUSTOMERS AS C ON (L.CUSTOMER_ID = C.ID)
GROUP BY C.NAME
HAVING COUNT(L.CUSTOMER_ID) >= 2;

--20 - Construa uma consulta capaz de exibir todas as locações realizadas, 
--assim como também o nome do cliente, do automóvel 
--e do funcionário vinculados em cada locação
SELECT
L.ID AS 'Código da locação', 
START_DATE AS 'Data início',
END_DATE AS 'Data fim',
TOTAL,
C.NAME AS 'Cliente', 
CARS.NAME AS 'Carro',
E.NAME AS 'Funcionário'
FROM LOCATIONS AS L
JOIN CARS ON (L.CAR_ID = CARS.ID)
JOIN CUSTOMERS AS C ON (L.CUSTOMER_ID = C.ID)
JOIN EMPLOYEES AS E ON (L.EMPLOYEE_ID = E.ID);

--21 - Construa uma consulta capaz de exibir quantas locações 
--existem na tabela de LOCATIONS
SELECT COUNT(ID) AS 'Qtd locação' FROM LOCATIONS;

--22 - Construa uma consulta capaz de exibir qual foi a locação com o TOTAL com maior valor.
SELECT ID AS 'Código da locação', START_DATE AS 'Data início', END_DATE AS 'Data fim', 
MAX(TOTAL) AS 'Total maior' FROM LOCATIONS;

-- trazendo mais informações - JOIN com as outras tabelas 
SELECT
L.ID AS 'Código da locação', 
START_DATE AS 'Data início',
END_DATE AS 'Data fim',
TOTAL,
C.NAME AS 'Cliente', 
CARS.NAME AS 'Carro',
E.NAME AS 'Funcionário',
MAX(TOTAL) AS 'Total maior'
FROM LOCATIONS AS L
JOIN CARS ON (L.CAR_ID = CARS.ID)
JOIN CUSTOMERS AS C ON (L.CUSTOMER_ID = C.ID)
JOIN EMPLOYEES AS E ON (L.EMPLOYEE_ID = E.ID);

--23 - Construa uma consulta capaz de exibir todas as locações realizadas, 
--entre as datas “2022-05-20” a “2022-12-25”

SELECT * FROM LOCATIONS
WHERE (START_DATE BETWEEN '2022-05-20' AND '2022-12-25') 
OR (END_DATE BETWEEN '2022-05-20' AND '2022-12-25');

-- trazendo mais informações - JOIN com as outras tabelas 
SELECT
L.ID AS 'Código da locação', 
START_DATE AS 'Data início',
END_DATE AS 'Data fim',
TOTAL,
C.NAME AS 'Cliente', 
CARS.NAME AS 'Carro',
E.NAME AS 'Funcionário'
FROM LOCATIONS AS L
JOIN CARS ON (L.CAR_ID = CARS.ID)
JOIN CUSTOMERS AS C ON (L.CUSTOMER_ID = C.ID)
JOIN EMPLOYEES AS E ON (L.EMPLOYEE_ID = E.ID)
WHERE (START_DATE BETWEEN '2022-05-20' AND '2022-12-25') OR (END_DATE BETWEEN '2022-05-20' AND '2022-12-25');

