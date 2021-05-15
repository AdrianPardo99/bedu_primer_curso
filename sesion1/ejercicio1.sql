# 1
use classicmodels;
# Describimos la tabla employees para saber campos
# mysql> desc employees;
#+----------------+--------------+------+-----+---------+-------+
#| Field          | Type         | Null | Key | Default | Extra |
#+----------------+--------------+------+-----+---------+-------+
#| employeeNumber | int          | NO   | PRI | NULL    |       |
#| lastName       | varchar(50)  | NO   |     | NULL    |       |
#| firstName      | varchar(50)  | NO   |     | NULL    |       |
#| extension      | varchar(10)  | NO   |     | NULL    |       |
#| email          | varchar(100) | NO   |     | NULL    |       |
#| officeCode     | varchar(10)  | NO   | MUL | NULL    |       |
#| repORtsTo      | int          | YES  | MUL | NULL    |       |
#| jobTitle       | varchar(50)  | NO   |     | NULL    |       |
#+----------------+--------------+------+-----+---------+-------+
# 2
SELECT lastName FROM employees;
# Output contain
# 23 rows in set (0.11 sec)

# 3
SELECT lastName,firstName,jobTitle FROM employees;
# Output contain
# 23 rows in set (0.11 sec)

# 4
SELECT*FROM employees;
# Output contain
# 23 rows in set (0.11 sec)

# 5
SELECT lastName,firstName,jobTitle FROM employees WHERE jobTitle="Sales Rep";
# Output contain
# 17 rows in set (0.11 sec)

# 6
SELECT lastName,firstName,jobTitle,officeCode FROM employees WHERE jobTitle="Sales Rep" AND officeCode=1;
# Output contain
# 2 rows in set (0.11 sec)

# 7
SELECT lastName,firstName,jobTitle,officeCode FROM employees WHERE jobTitle="Sales Rep" OR officeCode=1;
# Output contain
# 21 rows in set (0.11 sec)

# 8
SELECT lastName,firstName,officeCode FROM employees WHERE officeCode>=1 AND officeCode<=3;
# Output contain
# 10 rows in set (0.11 sec)

# 9
SELECT lastName,firstName,jobTitle FROM employees WHERE jobTitle<>"Sales Rep";
# Output contain
# 6 rows in set (0.11 sec)

# 10
SELECT lastName,firstName,officeCode FROM employees WHERE officeCode>5;
# Output contain
# 6 rows in set (0.11 sec)

# 11
SELECT lastName,firstName,officeCode FROM employees WHERE officeCode<=4;
# Output contain
# 15 rows in set (0.11 sec)

# Para esta tabla primero un describe

# mysql> desc customers;
# +------------------------+---------------+------+-----+---------+-------+
# | Field                  | Type          | Null | Key | Default | Extra |
# +------------------------+---------------+------+-----+---------+-------+
# | customerNumber         | int           | NO   | PRI | NULL    |       |
# | customerName           | varchar(50)   | NO   |     | NULL    |       |
# | contactLastName        | varchar(50)   | NO   |     | NULL    |       |
# | contactFirstName       | varchar(50)   | NO   |     | NULL    |       |
# | phone                  | varchar(50)   | NO   |     | NULL    |       |
# | addressLine1           | varchar(50)   | NO   |     | NULL    |       |
# | addressLine2           | varchar(50)   | YES  |     | NULL    |       |
# | city                   | varchar(50)   | NO   |     | NULL    |       |
# | state                  | varchar(50)   | YES  |     | NULL    |       |
# | postalCode             | varchar(15)   | YES  |     | NULL    |       |
# | country                | varchar(50)   | NO   |     | NULL    |       |
# | salesRepEmployeeNumber | int           | YES  | MUL | NULL    |       |
# | creditLimit            | decimal(10,2) | YES  |     | NULL    |       |
# +------------------------+---------------+------+-----+---------+-------+

# 12
SELECT customerName,country,state FROM customers WHERE country="USA" AND state="CA";
# Output contain
# 15 rows in set (0.11 sec)

# 13
SELECT customerName,country,state,creditLimit FROM customers WHERE country="USA" AND state="CA" AND creditLimit>100000;
# Output contain
# 3 rows in set (0.11 sec)

# 14
SELECT customerName, country FROM customers WHERE country="USA" OR country="France";
# Output contain
# 48 rows in set (0.11 sec)

# 15
SELECT customerName, country, creditLimit FROM customers WHERE (country="USA" OR country="France") AND creditLimit>100000;
# Output contain
# 11 rows in set (0.11 sec)


# desc offices;
# +--------------+-------------+------+-----+---------+-------+
# | Field        | Type        | Null | Key | Default | Extra |
# +--------------+-------------+------+-----+---------+-------+
# | officeCode   | varchar(10) | NO   | PRI | NULL    |       |
# | city         | varchar(50) | NO   |     | NULL    |       |
# | phone        | varchar(50) | NO   |     | NULL    |       |
# | addressLine1 | varchar(50) | NO   |     | NULL    |       |
# | addressLine2 | varchar(50) | YES  |     | NULL    |       |
# | state        | varchar(50) | YES  |     | NULL    |       |
# | country      | varchar(50) | NO   |     | NULL    |       |
# | postalCode   | varchar(15) | NO   |     | NULL    |       |
# | territory    | varchar(10) | NO   |     | NULL    |       |
# +--------------+-------------+------+-----+---------+-------+

# 16
SELECT officeCode, city, phone, country FROM offices WHERE country="USA" OR country="France";
# Output contain
# 4 rows in set (0.11 sec)

# 17
SELECT officeCode, city, phone, country FROM offices WHERE country<>"USA" AND country<>"France";
# Output contain
# 3 rows in set (0.11 sec)

# desc orders
# +----------------+-------------+------+-----+---------+-------+
# | Field          | Type        | Null | Key | Default | Extra |
# +----------------+-------------+------+-----+---------+-------+
# | orderNumber    | int         | NO   | PRI | NULL    |       |
# | orderDate      | date        | NO   |     | NULL    |       |
# | requiredDate   | date        | NO   |     | NULL    |       |
# | shippedDate    | date        | YES  |     | NULL    |       |
# | status         | varchar(15) | NO   |     | NULL    |       |
# | comments       | text        | YES  |     | NULL    |       |
# | customerNumber | int         | NO   | MUL | NULL    |       |
# +----------------+-------------+------+-----+---------+-------+


# 18
SELECT orderNumber, customerNumber, status, shippedDate FROM orders WHERE orderNumber=10165 OR orderNumber=10287 OR orderNumber=10310;
# Output contain
# 3 rows in set (0.11 sec)

# 19
SELECT contactLastName, customerName FROM customers ORDER BY contactLastName;
# Output contain
# 122 rows in set (0.11 sec)

# 20
SELECT contactLastName, customerName FROM customers ORDER BY contactLastName DESC;
# Output contain
# 122 rows in set (0.11 sec)

# 21
SELECT contactLastName,customerName FROM customers ORDER BY contactLastName DESC,customerName;
# Output contain
# 122 rows in set (0.11 sec)

# 22
SELECT customerNumber, customerName, creditLimit FROM customers ORDER BY creditLimit DESC LIMIT 5;
# Output contain
# 5 rows in set (0.11 sec)

# 23
SELECT customerNumber, customerName, creditLimit FROM customers WHERE creditLimit<>0 ORDER BY creditLimit;
# Output contain
# 98 rows in set (0.11 sec)
