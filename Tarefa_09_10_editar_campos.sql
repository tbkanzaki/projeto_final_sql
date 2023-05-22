-- SQLite
--9 - Construa uma query SQL para editar o campo e-mail do cliente com nome Carolina, 
--onde devemos trocar de “carol@ig.com.br” para “carolina@campuscode.com.br”.
SELECT * FROM CUSTOMERS WHERE NAME LIKE 'Carolina';
UPDATE CUSTOMERS SET EMAIL = 'carolina@campuscode.com.br' WHERE ID = 9;

--10 - Construa uma query SQL para editar a data de nascimento do cliente 
--com nome Josefa para “1986-06-19”.
SELECT * FROM CUSTOMERS WHERE NAME LIKE 'Josefa';
UPDATE CUSTOMERS SET BIRTH_DATE = '1986-06-19' WHERE ID = 4;