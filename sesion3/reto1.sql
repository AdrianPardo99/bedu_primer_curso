SELECT clave, nombre, apellido_paterno FROM venta AS v JOIN empleado AS e ON v.id_empleado=e.id_empleado ORDER BY clave;
# +------------+-------------+---------------------------+
# | clave      | nombre      | apellido_paterno          |
# +------------+-------------+---------------------------+
# | 0002-8149  | Leonidas    | Junkinson                 |
# | 0002-8149  | Leslie      | Cuvley                    |
# | 0002-8149  | Edee        | Billin                    |
# | 0002-8149  | Jillie      | Corter                    |
# | 0002-8149  | Sydney      | Woolway                   |
# | 0002-8149  | Aguistin    | Richarz                   |
# | 0002-8149  | Sigfrid     | Teal                      |
# | 0002-8149  | Rebecka     | Rushworth                 |
# | 0002-8149  | Nora        | O'Suaird                  |
# | 0002-8149  | Luise       | Lennard                   |
# | 0002-8149  | Gustie      | Gryglewski                |
# | 0002-8149  | Petr        | Skedgell                  |
# 1000 rows in set (0.16 sec)


SELECT clave, nombre FROM venta AS v JOIN articulo AS a ON v.id_articulo=a.id_articulo ORDER BY clave;
# +------------+-------------------------------------+
# | clave      | nombre                              |
# +------------+-------------------------------------+
# | 0002-8149  | Sprouts - Pea                       |
# | 0002-8149  | Wine - Saint - Bris 2002, Sauv      |
# | 0002-8149  | Sauce Tomato Pouch                  |
# | 0002-8149  | Wine - Montecillo Rioja Crianza     |
# | 0002-8149  | Yokaline                            |
# | 0002-8149  | Marsala - Sperone, Fine, D.o.c.     |
# | 0002-8149  | Glaze - Clear                       |
# | 0002-8149  | Beans - Green                       |
# | 0002-8149  | Water, Tap                          |
# | 0002-8149  | Butter Sweet                        |
# | 0002-8149  | Sour Puss - Tangerine               |
# | 0002-8149  | Bread - White, Sliced               |
# | 0002-8149  | Juice - Orange 1.89l                |
# | 0008-0833  | Ice Cream Bar - Drumstick           |
# | 0009-0347  | Frangelico                          |
# | 0019-9888  | Shrimp - 16 - 20 Cooked, Peeled     |
# | 0023-9177  | Rabbit - Saddles                    |
# 1000 rows in set (0.16 sec)


SELECT clave, round(sum(precio),1) AS total FROM venta AS v JOIN articulo AS a ON v.id_articulo=a.id_articulo GROUP BY clave ORDER BY clave;
# +------------+----------+
# | clave      | total    |
# +------------+----------+
# | 0002-8149  |  38642.6 |
# | 0008-0833  |    862.6 |
# | 0009-0347  |   6879.6 |
# | 0019-9888  |    178.6 |
# | 0023-9177  |   3891.9 |
# | 0049-0032  | 321524.6 |
# | 0065-0396  |     5572 |
# | 0067-5080  |   1675.5 |
# | 0067-6122  |  87221.9 |
# | 0069-1001  |   5382.4 |
# | 0074-6633  |   2882.7 |
# | 0075-2915  |   2799.8 |
# 169 rows in set (0.08 sec)
