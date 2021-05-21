USE MiNombre;
# Creacion de tabla 'users' en caso de no existir
CREATE TABLE IF NOT EXISTS users (
   user_id INT PRIMARY KEY,
   genero VARCHAR(1),
   edad INT,
   ocup INT,
   cp VARCHAR(20)
);

# En caso de existir o no
# DROP TABLE IF EXISTS nombre;
