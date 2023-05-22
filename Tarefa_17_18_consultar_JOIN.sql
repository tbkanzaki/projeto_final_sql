-- SQLite
--17 - Construa uma consulta capaz de exibir 
--todos os funcionários e seus respectivos cargos
SELECT E.ID, E.NAME, E.PHONE_NUMBER, E.CONTRACT_DATE, P.DESCRIPTION
FROM EMPLOYEES AS E
INNER JOIN POSITIONS AS P ON (E.POSITION_ID = P.ID);

--18 - Construa uma consulta capaz de exibir 
--somente os funcionários que realizaram mais ou igual a 2 locações.
SELECT E.ID, E.NAME, E.PHONE_NUMBER, E.CONTRACT_DATE, P.DESCRIPTION, COUNT(L.EMPLOYEE_ID)
FROM LOCATIONS AS L
JOIN EMPLOYEES AS E ON (L.EMPLOYEE_ID = E.ID)
JOIN POSITIONS AS P ON (E.POSITION_ID = P.ID)
GROUP BY E.NAME
HAVING COUNT(L.EMPLOYEE_ID) >= 2;