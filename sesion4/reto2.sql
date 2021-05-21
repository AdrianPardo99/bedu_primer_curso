USE MiNombre;
# Carga de datos en "movies" del archivo "movies.dat"
LOAD DATA LOCAL INFILE "ml-1m/movies.dat"
INTO TABLE movies
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n';

# Carga de datos en "ratings" del archivo "ratings.dat"
LOAD DATA LOCAL INFILE "ml-1m/ratings.dat"
INTO TABLE ratings
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n';
