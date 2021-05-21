
# Para cargar los datos desde el terminal de nuestro servidor


SHOW VARIABLES LIKE "local_infile";
# En caso de off modificamos el acceso
 SET GLOBAL local_infile = 'ON';
SHOW VARIABLES LIKE "local_infile";

# En caso de que el INFILE mande un error como
# The MySQL server is running with the
#   --secure-file-priv option so it cannot execute this statement
# Ejecutar lo siguiente:
LOAD DATA LOCAL INFILE "ml-1m/users.dat"
INTO TABLE users
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n';
