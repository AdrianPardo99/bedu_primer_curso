SELECT v.clave, v.fecha, a.nombre producto, a.precio, concat(e.nombre, ' ', e.apellido_paterno) empleado FROM venta v JOIN empleado e ON v.id_empleado=e.id_empleado JOIN articulo a ON v.id_articulo=a.id_articulo;
# +------------+---------------------+-------------------------------------+---------+--------------------------------+
# | clave      | fecha               | producto                            | precio  | empleado                       |
# +------------+---------------------+-------------------------------------+---------+--------------------------------+
# | 0228-3661  | 2019-11-15 00:00:00 | Cake - Cake Sheet Macaroon          | 3714.37 | Arlana Fanstone                |
# | 52125-277  | 2019-04-23 00:00:00 | Beans - Long, Chinese               | 1157.42 | Julianna Gecke                 |
# | 0049-0032  | 2019-08-31 00:00:00 | Beef - Rib Roast, Capless           | 4788.24 | Maryellen Parkisson            |
# | 52125-277  | 2020-02-03 15:04:57 | Langers - Ruby Red Grapfruit        | 4786.97 | Cad Sambedge                   |
# | 13107-062  | 2019-10-30 00:00:00 | Filter - Coffee                     | 5816.84 | Michaeline Stolli              |
# | 0049-0032  | 2020-02-03 15:05:27 | Corn Meal                           | 5066.16 | Courtnay Harston               |
# | 47335-894  | 2019-06-08 00:00:00 | Wine - White, Pelee Island          | 2735.46 | Giuditta Chicchetto            |
# | 52125-277  | 2020-02-03 15:04:57 | Bagelers - Cinn / Brown             | 1133.63 | Julianna Gecke                 |
# | 0049-0032  | 2020-02-03 15:05:27 | Smoked Tongue                       | 2115.44 | Rosalinde Livock               |
# | 13107-062  | 2020-02-03 15:05:40 | Sage Ground Wiberg                  | 2689.33 | Ema Itzkovwich                 |
# | 51655-951  | 2019-10-10 00:00:00 | Duck - Breast                       | 1930.66 | Emmy Roblin                    |
# | 0049-0032  | 2020-02-03 15:05:27 | Filter - Coffee                     | 5816.84 | Mignonne Baszniak              |
# | 52380-1865 | 2019-07-09 00:00:00 | Strawberries - California           | 3620.47 | Hersch Blader                  |
# | 47335-894  | 2020-02-03 15:05:50 | Cake - Box Window 10x10x2.5         | 5929.94 | Hyacinthia Petz                |
# | 13107-062  | 2020-02-03 15:05:40 | Beef - Montreal Smoked Brisket      | 1864.11 | Frederich Canton               |
# | 52125-277  | 2020-02-03 15:04:57 | Veal - Tenderloin, Untrimmed        | 3635.75 | Pernell Brotherwood            |
# | 69128-001  | 2019-03-23 00:00:00 | Juice - Lemon                       |  2485.2 | Berenice Scolland              |
# | 0049-0032  | 2020-02-03 15:05:27 | Carbonated Water - Blackberry       | 6652.19 | Morganne Curley                |
# | 52343-028  | 2019-12-18 00:00:00 | Tomatoes - Diced, Canned            | 3800.76 | Andree Shill                   |
# 1000 rows in set (0.25 sec)


CREATE VIEW tickets_786 AS (SELECT v.clave, v.fecha, a.nombre producto, a.precio, concat(e.nombre, ' ', e.apellido_paterno) empleado FROM venta v JOIN empleado e ON v.id_empleado=e.id_empleado JOIN articulo a ON v.id_articulo=a.id_articulo);
# Query OK, 0 rows affected (0.09 sec)


SELECT * FROM tickets_786;
# Same as the first query


SELECT clave, round(sum(precio),2) total FROM tickets_786 GROUP BY clave;
# +------------+-----------+
# | clave      | total     |
# +------------+-----------+
# | 0228-3661  |   3714.37 |
# | 52125-277  | 340582.65 |
# | 0049-0032  | 321524.61 |
# | 13107-062  | 249071.46 |
# | 47335-894  | 223650.32 |
# | 51655-951  | 190821.21 |
# | 52380-1865 | 162361.13 |
# | 69128-001  | 174310.76 |
# | 52343-028  | 150970.75 |
# | 68040-706  | 131078.51 |
# | 66336-030  | 102351.64 |
# | 47682-146  | 124106.79 |
# | 60760-353  | 104536.46 |
# 169 rows in set (0.08 sec)
