USE classicmodels;
# 1
SELECT employeeNumber, lastName, firstName FROM employees WHERE firstName LIKE "A%";
# +----------------+----------+-----------+
# | employeeNumber | lastName | firstName |
# +----------------+----------+-----------+
# |           1143 | Bow      | Anthony   |
# |           1611 | Fixter   | Andy      |
# +----------------+----------+-----------+
# 2 rows in set (0.12 sec

# 2
SELECT employeeNumber, lastName, firstName FROM employees WHERE lastName LIKE "%on";
# +----------------+-----------+-----------+
# | employeeNumber | lastName  | firstName |
# +----------------+-----------+-----------+
# |           1056 | Patterson | Mary      |
# |           1088 | Patterson | William   |
# |           1166 | Thompson  | Leslie    |
# |           1216 | Patterson | Steve     |
# +----------------+-----------+-----------+
# 4 rows in set (0.11 sec)

# 3
SELECT employeeNumber, lastName, firstName FROM employees WHERE firstName LIKE "%on%";
# +----------------+----------+-----------+
# | employeeNumber | lastName | firstName |
# +----------------+----------+-----------+
# |           1143 | Bow      | Anthony   |
# |           1286 | Tseng    | Foon Yue  |
# +----------------+----------+-----------+
# 2 rows in set (0.11 sec)

# 4
SELECT employeeNumber, lastName, firstName FROM employees WHERE firstName LIKE "G_____";
# +----------------+-----------+-----------+
# | employeeNumber | lastName  | firstName |
# +----------------+-----------+-----------+
# |           1102 | Bondur    | Gerard    |
# |           1323 | Vanauf    | George    |
# |           1370 | Hernandez | Gerard    |
# +----------------+-----------+-----------+
# 3 rows in set (0.11 sec)

# 5
SELECT employeeNumber, lastName, firstName FROM employees WHERE firstName NOT LIKE "B%";
# +----------------+-----------+-----------+
# | employeeNumber | lastName  | firstName |
# +----------------+-----------+-----------+
# |           1002 | Murphy    | Diane     |
# |           1056 | Patterson | Mary      |
# |           1076 | Firrelli  | Jeff      |
# |           1088 | Patterson | William   |
# |           1102 | Bondur    | Gerard    |
# |           1143 | Bow       | Anthony   |
# |           1165 | Jennings  | Leslie    |
# |           1166 | Thompson  | Leslie    |
# |           1188 | Firrelli  | Julie     |
# |           1216 | Patterson | Steve     |
# |           1286 | Tseng     | Foon Yue  |
# |           1323 | Vanauf    | George    |
# |           1337 | Bondur    | Loui      |
# |           1370 | Hernandez | Gerard    |
# |           1401 | Castillo  | Pamela    |
# |           1501 | Bott      | Larry     |
# |           1611 | Fixter    | Andy      |
# |           1612 | Marsh     | Peter     |
# |           1619 | King      | Tom       |
# |           1621 | Nishi     | Mami      |
# |           1625 | Kato      | Yoshimi   |
# |           1702 | Gerard    | Martin    |
# +----------------+-----------+-----------+
# 22 rows in set (0.11 sec)

# 6
SELECT productCode, productName FROM products WHERE productCode LIKE "%\_20%";
# +-------------+-------------------------------------------+
# | productCode | productName                               |
# +-------------+-------------------------------------------+
# | S10_2016    | 1996 Moto Guzzi 1100i                     |
# | S24_2000    | 1960 BSA Gold Star DBD34                  |
# | S24_2011    | 18th century schooner                     |
# | S24_2022    | 1938 Cadillac V-16 Presidential Limousine |
# | S700_2047   | HMS Bounty                                |
# +-------------+-------------------------------------------+
# 5 rows in set (0.11 sec)

# 7
SELECT orderNumber, sum(priceEach) as Total FROM orderdetails GROUP BY orderNumber;
# 326 rows in set (0.11 sec)

# 8
SELECT YEAR(orderDate) year,COUNT(*) FROM orders GROUP BY year;
# +------+----------+
# | year | COUNT(*) |
# +------+----------+
# | 2003 |      111 |
# | 2004 |      151 |
# | 2005 |       64 |
# +------+----------+
# 3 rows in set (0.11 sec)

# 9
SELECT lastName, firstName FROM employees WHERE officeCode IN (SELECT officeCode FROM offices WHERE country LIKE 'USA');
# +-----------+-----------+
# | lastName  | firstName |
# +-----------+-----------+
# | Murphy    | Diane     |
# | Patterson | Mary      |
# | Firrelli  | Jeff      |
# | Bow       | Anthony   |
# | Jennings  | Leslie    |
# | Thompson  | Leslie    |
# | Firrelli  | Julie     |
# | Patterson | Steve     |
# | Tseng     | Foon Yue  |
# | Vanauf    | George    |
# +-----------+-----------+
# 10 rows in set (0.11 sec)

# 10
SELECT customerNumber, checkNumber, amount FROM payments WHERE amount=(SELECT max(amount) FROM payments);
# +----------------+-------------+-----------+
# | customerNumber | checkNumber | amount    |
# +----------------+-------------+-----------+
# |            141 | JE105477    | 120166.58 |
# +----------------+-------------+-----------+
# 1 row in set (0.11 sec)

# 11
SELECT customerNumber, checkNumber, amount FROM payments WHERE amount>(SELECT AVG(amount) FROM payments);
# 134 rows in set (0.11 sec)

# 12
SELECT customerName FROM customers WHERE customerNumber NOT IN (SELECT customerNumber FROM orders);
# +--------------------------------+
# | customerName                   |
# +--------------------------------+
# | Havel & Zbyszek Co             |
# | American Souvenirs Inc         |
# | Porto Imports Co.              |
# | Asian Shopping Network, Co     |
# | Natürlich Autos                |
# | ANG Resellers                  |
# | Messner Shopping Network       |
# | Franken Gifts, Co              |
# | BG&E Collectables              |
# | Schuyler Imports               |
# | Der Hund Imports               |
# | Cramer Spezialitäten, Ltd      |
# | Asian Treasures, Inc.          |
# | SAR Distributors, Co           |
# | Kommission Auto                |
# | Lisboa Souveniers, Inc         |
# | Precious Collectables          |
# | Stuttgart Collectable Exchange |
# | Feuer Online Stores, Inc       |
# | Warburg Exchange               |
# | Anton Designs, Ltd.            |
# | Mit Vergnügen & Co.            |
# | Kremlin Collectables, Co.      |
# | Raanan Stores, Inc             |
# +--------------------------------+
# 24 rows in set (0.11 sec)

# 13
SELECT MAX(quantityOrdered) as Maximo, MIN(quantityOrdered) as Minimo, AVG(quantityOrdered) FROM orderdetails;
# +--------+--------+----------------------+
# | Maximo | Minimo | AVG(quantityOrdered) |
# +--------+--------+----------------------+
# |     97 |      6 |              35.2190 |
# +--------+--------+----------------------+
# 1 row in set (0.11 sec)

# 14
SELECT status, COUNT(*) as Cantidad FROM orders GROUP BY status;
# +------------+----------+
# | status     | Cantidad |
# +------------+----------+
# | Shipped    |      303 |
# | Resolved   |        4 |
# | Cancelled  |        6 |
# | On Hold    |        4 |
# | Disputed   |        3 |
# | In Process |        6 |
# +------------+----------+
# 6 rows in set (0.11 sec)
