CREATE VIEW puestos_786 AS SELECT concat(e.nombre, ' ', e.apellido_paterno), p.nombre FROM empleado e JOIN puesto p ON e.id_puesto=p.id_puesto;
# Query OK, 0 rows affected (0.09 sec)


SELECT * FROM puestos_786;
# +-------------------------------------------+--------------------------------------+
# | concat(e.nombre, ' ', e.apellido_paterno) | nombre                               |
# +-------------------------------------------+--------------------------------------+
# | Enrichetta Bodechon                       | Product Engineer                     |
# | Morey Bowskill                            | Budget/Accounting Analyst IV         |
# | Jeannette Potes                           | Occupational Therapist               |
# | Cassey Womersley                          | Financial Advisor                    |
# | Gnni Risom                                | Physical Therapy Assistant           |
# | Lisle Carlsson                            | Marketing Assistant                  |
# | Andre Theurer                             | Tax Accountant                       |
# | Land Locksley                             | Product Engineer                     |
# | Nikki Fayerbrother                        | Sales Associate                      |
# 1000 rows in set (0.17 sec)


CREATE VIEW empleado_articulo_786 AS SELECT v.clave, concat(e.nombre, ' ', e.apellido_paterno) nombre, a.nombre articulo FROM venta v JOIN empleado e ON v.id_empleado=e.id_empleado JOIN articulo a ON v.id_articulo=a.id_articulo ORDER BY v.clave;
# Query OK, 0 rows affected (0.09 sec)


SELECT * FROM  empleado_articulo_786;
# +------------+--------------------------------+-------------------------------------+
# | clave      | nombre                         | articulo                            |
# +------------+--------------------------------+-------------------------------------+
# | 0002-8149  | Leonidas Junkinson             | Sprouts - Pea                       |
# | 0002-8149  | Leslie Cuvley                  | Wine - Saint - Bris 2002, Sauv      |
# | 0002-8149  | Edee Billin                    | Sauce Tomato Pouch                  |
# | 0002-8149  | Jillie Corter                  | Wine - Montecillo Rioja Crianza     |
# | 0002-8149  | Sydney Woolway                 | Yokaline                            |
# | 0002-8149  | Aguistin Richarz               | Marsala - Sperone, Fine, D.o.c.     |
# | 0002-8149  | Sigfrid Teal                   | Glaze - Clear                       |
# | 0002-8149  | Rebecka Rushworth              | Beans - Green                       |
# | 0002-8149  | Nora O'Suaird                  | Water, Tap                          |
# | 0002-8149  | Luise Lennard                  | Butter Sweet                        |
# | 0002-8149  | Gustie Gryglewski              | Sour Puss - Tangerine               |
# | 0002-8149  | Petr Skedgell                  | Bread - White, Sliced               |
# | 0002-8149  | Doti Mc Kellen                 | Juice - Orange 1.89l                |
# | 0008-0833  | Kain Glassopp                  | Ice Cream Bar - Drumstick           |
# | 0009-0347  | Alleyn Cornehl                 | Frangelico                          |
# | 0019-9888  | Rickie Arnaldy                 | Shrimp - 16 - 20 Cooked, Peeled     |
# | 0023-9177  | Bethena Joly                   | Rabbit - Saddles                    |
# | 0049-0032  | Maryellen Parkisson            | Beef - Rib Roast, Capless           |
# | 0049-0032  | Courtnay Harston               | Corn Meal                           |
# | 0049-0032  | Rosalinde Livock               | Smoked Tongue                       |
# | 0049-0032  | Mignonne Baszniak              | Filter - Coffee                     |
# | 0049-0032  | Morganne Curley                | Carbonated Water - Blackberry       |
# | 0049-0032  | Emalia Stirrip                 | Curry Powder                        |
# | 0049-0032  | Shurlocke Pyford               | Sherbet - Raspberry                 |
# | 0049-0032  | Roger Hounihan                 | Beer - Sleemans Honey Brown         |
# | 0049-0032  | Imojean Cowl                   | Huck Towels White                   |
# 1000 rows in set (0.24 sec)


CREATE VIEW puesto_ventas_786 AS SELECT p.nombre, count(v.clave) total FROM venta v JOIN empleado e ON v.id_empleado=e.id_empleado JOIN puesto p ON e.id_puesto=p.id_puesto GROUP BY p.nombre;
# Query OK, 0 rows affected (0.09 sec)


SELECT * FROM puesto_ventas_786 ORDER BY total DESC LIMIT 1;
# +----------------------------+-------+
# | nombre                     | total |
# +----------------------------+-------+
# | Physical Therapy Assistant |    23 |
# +----------------------------+-------+
# 1 row in set (0.08 sec)
