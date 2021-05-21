SHOW KEYS FROM venta;
# +-------+------------+------------------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
# | Table | Non_unique | Key_name               | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
# +-------+------------+------------------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
# | venta |          0 | PRIMARY                |            1 | id_venta    | A         |        1000 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
# | venta |          1 | fk_venta_articulo1_idx |            1 | id_articulo | A         |         618 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
# | venta |          1 | fk_venta_empleado1_idx |            1 | id_empleado | A         |         642 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
# +-------+------------+------------------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
# 3 rows in set (0.09 sec)


SELECT*FROM empleado AS e JOIN puesto AS p ON e.id_puesto=p.id_puesto;
# +-------------+-----------+-------------+---------------------------+------------------+---------------+-----------+--------------------------------------+----------+
# | id_empleado | id_puesto | nombre      | apellido_paterno          | apellido_materno | rfc           | id_puesto | nombre                               | salario  |
# +-------------+-----------+-------------+---------------------------+------------------+---------------+-----------+--------------------------------------+----------+
# |           1 |       235 | Enrichetta  | Bodechon                  | Ivkovic          | CLKQ293450Y89 |       235 | Product Engineer                     | 18836.86 |
# |           2 |       659 | Morey       | Bowskill                  | Metham           | SAUJ115055X38 |       659 | Budget/Accounting Analyst IV         | 10326.54 |
# |           3 |       745 | Jeannette   | Potes                     | Heisler          | HIPN989807Q14 |       745 | Occupational Therapist               | 19806.07 |
# |           4 |       139 | Cassey      | Womersley                 | Chapell          | XOFW986548J75 |       139 | Financial Advisor                    | 20528.15 |
# |           5 |       668 | Gnni        | Risom                     | Kalinowsky       | YTLO032309Z47 |       668 | Physical Therapy Assistant           | 20688.87 |
# |           6 |        96 | Lisle       | Carlsson                  | Marquot          | PONG971278E47 |        96 | Marketing Assistant                  | 19593.51 |
# 1000 rows in set (0.25 sec)


SELECT*FROM puesto AS p LEFT JOIN empleado e ON p.id_puesto=e.id_puesto;
# +-----------+--------------------------------------+----------+-------------+-----------+-------------+---------------------------+------------------+---------------+
# | id_puesto | nombre                               | salario  | id_empleado | id_puesto | nombre      | apellido_paterno          | apellido_materno | rfc           |
# +-----------+--------------------------------------+----------+-------------+-----------+-------------+---------------------------+------------------+---------------+
# |         1 | Analog Circuit Design manager        | 28500.98 |         158 |         1 | Kristien    | MacGiffin                 | Spurden          | BPSX843218N44 |
# |         1 | Analog Circuit Design manager        | 28500.98 |         882 |         1 | Killie      | Cosyns                    | Jakoubek         | ILEX192895U29 |
# |         2 | Junior Executive                     | 10508.47 |        NULL |      NULL | NULL        | NULL                      | NULL             | NULL          |
# |         3 | Director of Sales                    | 28725.56 |         519 |         3 | Dicky       | Abotson                   | Nutbrown         | CSZT485586W61 |
# |         3 | Director of Sales                    | 28725.56 |         843 |         3 | Thorndike   | Dowdall                   | Schnitter        | KDFM877616F59 |
# |         4 | Staff Scientist                      | 14965.31 |         317 |         4 | Norrie      | McGarrie                  | Hartopp          | HDOW177256O16 |
# |         4 | Staff Scientist                      | 14965.31 |         361 |         4 | Maxy        | Udden                     | Kose             | MBZF302490Y06 |
# |         5 | Desktop Support Technician           | 15885.41 |        NULL |      NULL | NULL        | NULL                      | NULL             | NULL          |
# |         6 | Budget/Accounting Analyst III        | 17131.23 |         166 |         6 | Della       | Fulbrook                  | Harrie           | APGJ840909W11 |
# |         6 | Budget/Accounting Analyst III        | 17131.23 |         206 |         6 | Katya       | Banbridge                 | Fossitt          | ELAY505814Q48 |
# |         7 | Accounting Assistant III             | 29257.91 |         796 |         7 | Abbie       | Tibald                    | Pymer            | OCBH010837O12 |
# |         8 | Programmer Analyst II                | 23223.95 |        NULL |      NULL | NULL        | NULL                      | NULL             | NULL          |
# 1366 rows in set (0.24 sec)


SELECT*FROM empleado AS e RIGHT JOIN puesto AS p ON e.id_puesto=p.id_puesto;
# +-------------+-----------+-------------+---------------------------+------------------+---------------+-----------+--------------------------------------+----------+
# | id_empleado | id_puesto | nombre      | apellido_paterno          | apellido_materno | rfc           | id_puesto | nombre                               | salario  |
# +-------------+-----------+-------------+---------------------------+------------------+---------------+-----------+--------------------------------------+----------+
# |         158 |         1 | Kristien    | MacGiffin                 | Spurden          | BPSX843218N44 |         1 | Analog Circuit Design manager        | 28500.98 |
# |         882 |         1 | Killie      | Cosyns                    | Jakoubek         | ILEX192895U29 |         1 | Analog Circuit Design manager        | 28500.98 |
# |        NULL |      NULL | NULL        | NULL                      | NULL             | NULL          |         2 | Junior Executive                     | 10508.47 |
# |         519 |         3 | Dicky       | Abotson                   | Nutbrown         | CSZT485586W61 |         3 | Director of Sales                    | 28725.56 |
# |         843 |         3 | Thorndike   | Dowdall                   | Schnitter        | KDFM877616F59 |         3 | Director of Sales                    | 28725.56 |
# |         317 |         4 | Norrie      | McGarrie                  | Hartopp          | HDOW177256O16 |         4 | Staff Scientist                      | 14965.31 |
# |         361 |         4 | Maxy        | Udden                     | Kose             | MBZF302490Y06 |         4 | Staff Scientist                      | 14965.31 |
# |        NULL |      NULL | NULL        | NULL                      | NULL             | NULL          |         5 | Desktop Support Technician           | 15885.41 |
# |         166 |         6 | Della       | Fulbrook                  | Harrie           | APGJ840909W11 |         6 | Budget/Accounting Analyst III        | 17131.23 |
# |         206 |         6 | Katya       | Banbridge                 | Fossitt          | ELAY505814Q48 |         6 | Budget/Accounting Analyst III        | 17131.23 |
# |         796 |         7 | Abbie       | Tibald                    | Pymer            | OCBH010837O12 |         7 | Accounting Assistant III             | 29257.91 |
# |        NULL |      NULL | NULL        | NULL                      | NULL             | NULL          |         8 | Programmer Analyst II                | 23223.95 |
# |        NULL |      NULL | NULL        | NULL                      | NULL             | NULL          |         9 | Nurse Practicioner                   |  11483.4 |
# 1366 rows in set (0.24 sec)
