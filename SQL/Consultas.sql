-- Projetar o nome do filme e o nome do diretor de cada filme;
SELECT name, first_name

FROM movies, movies_directors,directors

WHERE movie_id = movies.id and director_id = directors.id

 
-- Projetar o nome do filme, nome do ator e o papel que cada ator teve no filme para filmes 
-- com ranking acima da nota 6; 
Select name,first_name,role

FROM (actors join roles on actor_id=actors.id) join movies on movie_id = movies.id

 
-- Projetar o nome do diretor e o número de filmes que cada diretor dirigiu;
Select first_name, total

FROM (SELECT director_id, COUNT(*) as total

FROM movies_directors

group by director_id) AS A, directors

WHERE A.director_id = id

 
-- Projetar o gênero e o número de filmes de cada gênero;
SELECT genre, COUNT(*) as total

FROM movies_genres

group by genre

 
-- Projetar o gênero, o ranking (nota) médio, mínimo e máximo dos filmes do gênero.
SELECT genre ,AVG(rank) AS medio, MIN(rank) AS minimo, MAX(rank) as maximo

FROM  movies,movies_genres

WHERE id = movie_id

group by genre
