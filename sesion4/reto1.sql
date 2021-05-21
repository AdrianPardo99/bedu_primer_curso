USE MiNombre;
# Creacion de tabla "movies" si no existe
CREATE TABLE IF NOT EXISTS movies (
  movie_id INT PRIMARY KEY,
  titulo VARCHAR(200),
  genero VARCHAR(200)
);
# Creacion de tabla "ratings" si no existe
CREATE TABLE IF NOT EXISTS ratings (
  user_id INT,
  movie_id INT,
  rating INT,
  time_stamp BIGINT,
  FOREIGN KEY(user_id) REFERENCES users(user_id),
  FOREIGN KEY(movie_id) REFERENCES movies(movie_id)
);

SELECT * FROM users LIMIT 10;

SELECT * FROM movies LIMIT 10;

SELECT * FROM ratings LIMIT 10;
