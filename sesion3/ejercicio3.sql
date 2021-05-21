USE classicmodels;

# 1
SELECT o.orderNumber, sum(quantityOrdered) FROM orders o JOIN orderdetails od ON o.orderNumber=od.orderNumber GROUP BY o.orderNumber;
# +-------------+----------------------+
# | orderNumber | sum(quantityOrdered) |
# +-------------+----------------------+
# |       10100 |                  151 |
# |       10101 |                  142 |
# |       10102 |                   80 |
# |       10103 |                  541 |
# |       10104 |                  443 |
# |       10105 |                  545 |
# |       10106 |                  675 |
# |       10107 |                  229 |
# |       10108 |                  561 |
# |       10109 |                  212 |
# |       10110 |                  570 |
# |       10111 |                  217 |
# |       10112 |                   52 |
# |       10113 |                  143 |
# |       10114 |                  351 |
# 326 rows in set (0.09 sec)


# 2
SELECT o.orderNumber, o.status, sum(quantityOrdered * priceEach) total FROM orders o JOIN orderdetails od ON o.orderNumber=od.orderNumber GROUP BY o.orderNumber, o.status;
# +-------------+------------+----------+
# | orderNumber | status     | total    |
# +-------------+------------+----------+
# |       10100 | Shipped    | 10223.83 |
# |       10101 | Shipped    | 10549.01 |
# |       10102 | Shipped    |  5494.78 |
# |       10103 | Shipped    | 50218.95 |
# |       10104 | Shipped    | 40206.20 |
# |       10105 | Shipped    | 53959.21 |
# |       10106 | Shipped    | 52151.81 |
# |       10107 | Shipped    | 22292.62 |
# |       10108 | Shipped    | 51001.22 |
# |       10109 | Shipped    | 25833.14 |
# |       10110 | Shipped    | 48425.69 |
# |       10111 | Shipped    | 16537.85 |
# 326 rows in set (0.09 sec)


# 3
SELECT o.orderNumber, requiredDate, orderLineNumber, p.productName, quantityOrdered, priceEach FROM orders o JOIN orderdetails od ON o.orderNumber=od.orderNumber JOIN products p ON od.productCode=p.productCode;
# +-------------+--------------+-----------------+---------------------------------------------+-----------------+-----------+
# | orderNumber | requiredDate | orderLineNumber | productName                                 | quantityOrdered | priceEach |
# +-------------+--------------+-----------------+---------------------------------------------+-----------------+-----------+
# |       10100 | 2003-01-13   |               3 | 1917 Grand Touring Sedan                    |              30 |    136.00 |
# |       10100 | 2003-01-13   |               2 | 1911 Ford Town Car                          |              50 |     55.09 |
# |       10100 | 2003-01-13   |               4 | 1932 Alfa Romeo 8C2300 Spider Sport         |              22 |     75.46 |
# |       10100 | 2003-01-13   |               1 | 1936 Mercedes Benz 500k Roadster            |              49 |     35.29 |
# |       10101 | 2003-01-18   |               4 | 1932 Model A Ford J-Coupe                   |              25 |    108.06 |
# |       10101 | 2003-01-18   |               1 | 1928 Mercedes-Benz SSK                      |              26 |    167.06 |
# |       10101 | 2003-01-18   |               3 | 1939 Chevrolet Deluxe Coupe                 |              45 |     32.53 |
# |       10101 | 2003-01-18   |               2 | 1938 Cadillac V-16 Presidential Limousine   |              46 |     44.35 |
# |       10102 | 2003-01-18   |               2 | 1937 Lincoln Berline                        |              39 |     95.55 |
# |       10102 | 2003-01-18   |               1 | 1936 Mercedes-Benz 500K Special Roadster    |              41 |     43.13 |
# |       10103 | 2003-02-07   |              11 | 1952 Alpine Renault 1300                    |              26 |    214.30 |
# |       10103 | 2003-02-07   |               4 | 1962 LanciaA Delta 16V                      |              42 |    119.67 |
# |       10103 | 2003-02-07   |               8 | 1958 Setra Bus                              |              27 |    121.64 |
# |       10103 | 2003-02-07   |              10 | 1940 Ford Pickup Truck                      |              35 |     94.50 |
# |       10103 | 2003-02-07   |               2 | 1926 Ford Fire Engine                       |              22 |     58.34 |
# |       10103 | 2003-02-07   |              12 | 1913 Ford Model T Speedster                 |              27 |     92.19 |
# |       10103 | 2003-02-07   |              14 | 1934 Ford V8 Coupe                          |              35 |     61.84 |
# |       10103 | 2003-02-07   |              13 | 18th Century Vintage Horse Carriage         |              25 |     86.92 |
# |       10103 | 2003-02-07   |              16 | 1917 Maxwell Touring Car                    |              46 |     86.31 |
# |       10103 | 2003-02-07   |               5 | 1940s Ford truck                            |              36 |     98.07 |
# |       10103 | 2003-02-07   |               9 | 1939 Cadillac Limousine                     |              41 |     40.75 |
# |       10103 | 2003-02-07   |               1 | 1962 Volkswagen Microbus                    |              36 |    107.34 |
# |       10103 | 2003-02-07   |              15 | 1936 Chrysler Airflow                       |              25 |     88.62 |
# 2996 rows in set (0.34 sec)


# 4
SELECT o.orderNumber, p.productName, MSRP, priceEach FROM orders o JOIN orderdetails od ON o.orderNumber=od.orderNumber JOIN products p ON od.productCode=p.productCode;
# +-------------+---------------------------------------------+--------+-----------+
# | orderNumber | productName                                 | MSRP   | priceEach |
# +-------------+---------------------------------------------+--------+-----------+
# |       10123 | 1965 Aston Martin DB5                       | 124.44 |    120.71 |
# |       10123 | 1999 Indy 500 Monte Carlo SS                | 132.00 |    114.84 |
# |       10123 | 1948 Porsche Type 356 Roadster              | 141.28 |    117.26 |
# |       10123 | 1966 Shelby Cobra 427 S/C                   |  50.31 |     43.27 |
# |       10298 | 1996 Moto Guzzi 1100i                       | 118.94 |    105.86 |
# |       10298 | 1936 Harley Davidson El Knucklehead         |  60.57 |     60.57 |
# |       10345 | 1938 Cadillac V-16 Presidential Limousine   |  44.80 |     38.98 |
# |       10124 | 1917 Grand Touring Sedan                    | 170.00 |    153.00 |
# |       10124 | 1911 Ford Town Car                          |  60.54 |     58.12 |
# |       10124 | 1932 Model A Ford J-Coupe                   | 127.13 |    111.87 |
# |       10124 | 1932 Alfa Romeo 8C2300 Spider Sport         |  92.03 |     75.46 |
# |       10124 | 1957 Ford Thunderbird                       |  71.27 |     66.28 |
# |       10124 | 1970 Chevy Chevelle SS 454                  |  73.49 |     62.47 |
# |       10124 | 1939 Chevrolet Deluxe Coupe                 |  33.19 |     30.53 |
# |       10124 | 1938 Cadillac V-16 Presidential Limousine   |  44.80 |     36.29 |
# |       10124 | 1949 Jaguar XK 120                          |  90.87 |     74.51 |
# |       10124 | 1952 Citroen-15CV                           | 117.44 |     93.95 |
# 2996 rows in set (0.34 sec)


# 5
SELECT c.customerNumber, customerName, orderNumber, status FROM customers c LEFT JOIN orders o ON c.customerNumber=o.customerNumber;
# +----------------+------------------------------------+-------------+------------+
# | customerNumber | customerName                       | orderNumber | status     |
# +----------------+------------------------------------+-------------+------------+
# |            103 | Atelier graphique                  |       10123 | Shipped    |
# |            103 | Atelier graphique                  |       10298 | Shipped    |
# |            103 | Atelier graphique                  |       10345 | Shipped    |
# |            112 | Signal Gift Stores                 |       10124 | Shipped    |
# |            112 | Signal Gift Stores                 |       10278 | Shipped    |
# |            112 | Signal Gift Stores                 |       10346 | Shipped    |
# |            114 | Australian Collectors, Co.         |       10120 | Shipped    |
# |            114 | Australian Collectors, Co.         |       10125 | Shipped    |
# |            114 | Australian Collectors, Co.         |       10223 | Shipped    |
# |            114 | Australian Collectors, Co.         |       10342 | Shipped    |
# |            114 | Australian Collectors, Co.         |       10347 | Shipped    |
# |            119 | La Rochelle Gifts                  |       10275 | Shipped    |
# |            119 | La Rochelle Gifts                  |       10315 | Shipped    |
# |            119 | La Rochelle Gifts                  |       10375 | Shipped    |
# |            119 | La Rochelle Gifts                  |       10425 | In Process |
# |            121 | Baane Mini Imports                 |       10103 | Shipped    |
# |            121 | Baane Mini Imports                 |       10158 | Shipped    |
# |            121 | Baane Mini Imports                 |       10309 | Shipped    |
# |            121 | Baane Mini Imports                 |       10325 | Shipped    |
# |            124 | Mini Gifts Distributors Ltd.       |       10113 | Shipped    |
# 350 rows in set (0.17 sec)


# 6
SELECT c.customerNumber, customerName FROM customers c LEFT JOIN orders o ON c.customerNumber=o.customerNumber WHERE orderNumber IS NULL;
# +----------------+--------------------------------+
# | customerNumber | customerName                   |
# +----------------+--------------------------------+
# |            125 | Havel & Zbyszek Co             |
# |            168 | American Souvenirs Inc         |
# |            169 | Porto Imports Co.              |
# |            206 | Asian Shopping Network, Co     |
# |            223 | Naturlich Autos                |
# |            237 | ANG Resellers                  |
# |            247 | Messner Shopping Network       |
# |            273 | Franken Gifts, Co              |
# |            293 | BG&E Collectables              |
# |            303 | Schuyler Imports               |
# |            307 | Der Hund Imports               |
# |            335 | Cramer Spezialitaten, Ltd      |
# |            348 | Asian Treasures, Inc.          |
# |            356 | SAR Distributors, Co           |
# |            361 | Kommission Auto                |
# |            369 | Lisboa Souveniers, Inc         |
# |            376 | Precious Collectables          |
# |            409 | Stuttgart Collectable Exchange |
# |            443 | Feuer Online Stores, Inc       |
# |            459 | Warburg Exchange               |
# |            465 | Anton Designs, Ltd.            |
# |            477 | Mit Vergnugen & Co.            |
# |            480 | Kremlin Collectables, Co.      |
# |            481 | Raanan Stores, Inc             |
# +----------------+--------------------------------+
# 24 rows in set (0.08 sec)


# 7
SELECT lastName, firstName, customerName, checkNumber, amount FROM employees e LEFT JOIN customers c ON e.employeeNumber=c.salesRepEmployeeNumber LEFT JOIN payments ON payments.customerNumber=c.customerNumber ORDER BY customerName, checkNumber;
# +-----------+-----------+------------------------------------+-------------+-----------+
# | lastName  | firstName | customerName                       | checkNumber | amount    |
# +-----------+-----------+------------------------------------+-------------+-----------+
# | Murphy    | Diane     | NULL                               | NULL        |      NULL |
# | Patterson | Mary      | NULL                               | NULL        |      NULL |
# | Firrelli  | Jeff      | NULL                               | NULL        |      NULL |
# | Patterson | William   | NULL                               | NULL        |      NULL |
# | Bondur    | Gerard    | NULL                               | NULL        |      NULL |
# | Bow       | Anthony   | NULL                               | NULL        |      NULL |
# | King      | Tom       | NULL                               | NULL        |      NULL |
# | Kato      | Yoshimi   | NULL                               | NULL        |      NULL |
# | Hernandez | Gerard    | Alpha Cognac                       | AF40894     |  33818.34 |
# | Hernandez | Gerard    | Alpha Cognac                       | HR224331    |  12432.32 |
# | Hernandez | Gerard    | Alpha Cognac                       | KI744716    |  14232.70 |
# | Tseng     | Foon Yue  | American Souvenirs Inc             | NULL        |      NULL |
# | Castillo  | Pamela    | Amica Models & Co.                 | IJ399820    |  33924.24 |
# | Castillo  | Pamela    | Amica Models & Co.                 | NE404084    |  48298.99 |
# | Fixter    | Andy      | Anna's Decorations, Ltd            | EM979878    |  27083.78 |
# | Fixter    | Andy      | Anna's Decorations, Ltd            | KM841847    |  38547.19 |
# | Fixter    | Andy      | Anna's Decorations, Ltd            | LE432182    |  41554.73 |
# | Fixter    | Andy      | Anna's Decorations, Ltd            | OJ819725    |  29848.52 |
# 283 rows in set (0.17 sec)

# 8
SELECT c.customerNumber, customerName, orderNumber, status FROM customers c RIGHT JOIN orders o ON c.customerNumber=o.customerNumber;
# +----------------+------------------------------------+-------------+------------+
# | customerNumber | customerName                       | orderNumber | status     |
# +----------------+------------------------------------+-------------+------------+
# |            363 | Online Diecast Creations Co.       |       10100 | Shipped    |
# |            128 | Blauer See Auto, Co.               |       10101 | Shipped    |
# |            181 | Vitachrome Inc.                    |       10102 | Shipped    |
# |            121 | Baane Mini Imports                 |       10103 | Shipped    |
# |            141 | Euro+ Shopping Channel             |       10104 | Shipped    |
# |            145 | Danish Wholesale Imports           |       10105 | Shipped    |
# |            278 | Rovelli Gifts                      |       10106 | Shipped    |
# |            131 | Land of Toys Inc.                  |       10107 | Shipped    |
# |            385 | Cruz & Sons Co.                    |       10108 | Shipped    |
# |            486 | Motor Mint Distributors Inc.       |       10109 | Shipped    |
# |            187 | AV Stores, Co.                     |       10110 | Shipped    |
# |            129 | Mini Wheels Co.                    |       10111 | Shipped    |
# |            144 | Volvo Model Replicas, Co           |       10112 | Shipped    |
# |            124 | Mini Gifts Distributors Ltd.       |       10113 | Shipped    |
# 326 rows in set (0.17 sec)


SELECT c.customerNumber, customerName FROM customers c RIGHT JOIN orders o ON c.customerNumber=o.customerNumber WHERE orderNumber IS NULL;
# Empty set (0.08 sec)


SELECT lastName, firstName, customerName, checkNumber, amount FROM employees e RIGHT JOIN customers c ON e.employeeNumber=c.salesRepEmployeeNumber LEFT JOIN payments ON payments.customerNumber=c.customerNumber ORDER BY customerName, checkNumber;
# +-----------+-----------+------------------------------------+-------------+-----------+
# | lastName  | firstName | customerName                       | checkNumber | amount    |
# +-----------+-----------+------------------------------------+-------------+-----------+
# | Hernandez | Gerard    | Alpha Cognac                       | AF40894     |  33818.34 |
# | Hernandez | Gerard    | Alpha Cognac                       | HR224331    |  12432.32 |
# | Hernandez | Gerard    | Alpha Cognac                       | KI744716    |  14232.70 |
# | Tseng     | Foon Yue  | American Souvenirs Inc             | NULL        |      NULL |
# | Castillo  | Pamela    | Amica Models & Co.                 | IJ399820    |  33924.24 |
# | Castillo  | Pamela    | Amica Models & Co.                 | NE404084    |  48298.99 |
# | NULL      | NULL      | ANG Resellers                      | NULL        |      NULL |
# | Fixter    | Andy      | Anna's Decorations, Ltd            | EM979878    |  27083.78 |
# | Fixter    | Andy      | Anna's Decorations, Ltd            | KM841847    |  38547.19 |
# | Fixter    | Andy      | Anna's Decorations, Ltd            | LE432182    |  41554.73 |
# | Fixter    | Andy      | Anna's Decorations, Ltd            | OJ819725    |  29848.52 |
# | NULL      | NULL      | Anton Designs, Ltd.                | NULL        |      NULL |
# | NULL      | NULL      | Asian Shopping Network, Co         | NULL        |      NULL |
# | NULL      | NULL      | Asian Treasures, Inc.              | NULL        |      NULL |
# 297 rows in set (0.17 sec)

# 9
# En un inicio no se pudo ejecutar el comando ya que arrojaba mensajes como:
CREATE VIEW dos_786 AS SELECT o.orderNumber, o.status, sum(quantityOrdered * priceEach) total FROM orders o JOIN orderdetails od ON o.orderNumber=od.orderNumber GROUP BY o.orderNumber, o.status;
SELECT*FROM dos_786;
# +-------------+------------+----------+
# | orderNumber | status     | total    |
# +-------------+------------+----------+
# |       10100 | Shipped    | 10223.83 |
# |       10101 | Shipped    | 10549.01 |
# |       10102 | Shipped    |  5494.78 |
# |       10103 | Shipped    | 50218.95 |
# |       10104 | Shipped    | 40206.20 |
# |       10105 | Shipped    | 53959.21 |
# |       10106 | Shipped    | 52151.81 |
# |       10107 | Shipped    | 22292.62 |
# |       10108 | Shipped    | 51001.22 |
# |       10109 | Shipped    | 25833.14 |
# |       10110 | Shipped    | 48425.69 |
# |       10111 | Shipped    | 16537.85 |
# |       10112 | Shipped    |  7674.94 |
# |       10113 | Shipped    | 11044.30 |
# 326 rows in set (0.09 sec)


CREATE VIEW seis_786 AS SELECT c.customerNumber, customerName FROM customers c LEFT JOIN orders o ON c.customerNumber=o.customerNumber WHERE orderNumber IS NULL;
SELECT*FROM seis_786;
# +----------------+--------------------------------+
# | customerNumber | customerName                   |
# +----------------+--------------------------------+
# |            125 | Havel & Zbyszek Co             |
# |            168 | American Souvenirs Inc         |
# |            169 | Porto Imports Co.              |
# |            206 | Asian Shopping Network, Co     |
# |            223 | Naturlich Autos                |
# |            237 | ANG Resellers                  |
# |            247 | Messner Shopping Network       |
# |            273 | Franken Gifts, Co              |
# |            293 | BG&E Collectables              |
# |            303 | Schuyler Imports               |
# |            307 | Der Hund Imports               |
# |            335 | Cramer Spezialitaten, Ltd      |
# |            348 | Asian Treasures, Inc.          |
# |            356 | SAR Distributors, Co           |
# |            361 | Kommission Auto                |
# |            369 | Lisboa Souveniers, Inc         |
# |            376 | Precious Collectables          |
# |            409 | Stuttgart Collectable Exchange |
# |            443 | Feuer Online Stores, Inc       |
# |            459 | Warburg Exchange               |
# |            465 | Anton Designs, Ltd.            |
# |            477 | Mit Vergnugen & Co.            |
# |            480 | Kremlin Collectables, Co.      |
# |            481 | Raanan Stores, Inc             |
# +----------------+--------------------------------+
# 24 rows in set (0.09 sec)

CREATE VIEW siete_786 AS SELECT lastName, firstName, customerName, checkNumber, amount FROM employees e LEFT JOIN customers c ON e.employeeNumber=c.salesRepEmployeeNumber LEFT JOIN payments ON payments.customerNumber=c.customerNumber ORDER BY customerName, checkNumber;
SELECT*FROM siete_786;
# +-----------+-----------+------------------------------------+-------------+-----------+
# | lastName  | firstName | customerName                       | checkNumber | amount    |
# +-----------+-----------+------------------------------------+-------------+-----------+
# | Murphy    | Diane     | NULL                               | NULL        |      NULL |
# | Patterson | Mary      | NULL                               | NULL        |      NULL |
# | Firrelli  | Jeff      | NULL                               | NULL        |      NULL |
# | Patterson | William   | NULL                               | NULL        |      NULL |
# | Bondur    | Gerard    | NULL                               | NULL        |      NULL |
# | Bow       | Anthony   | NULL                               | NULL        |      NULL |
# | King      | Tom       | NULL                               | NULL        |      NULL |
# | Kato      | Yoshimi   | NULL                               | NULL        |      NULL |
# | Hernandez | Gerard    | Alpha Cognac                       | AF40894     |  33818.34 |
# | Hernandez | Gerard    | Alpha Cognac                       | HR224331    |  12432.32 |
# 283 rows in set (0.17 sec)
