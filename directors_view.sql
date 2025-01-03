CREATE OR REPLACE VIEW director AS
	SELECT movie.movie_name, directors.first_name AS firstname, directors.last_name AS lastname
	FROM movie
	JOIN movies_has_directors ON movie.movie_id = movies_has_directors.movies_movie_id
	JOIN directors ON directors.director_id = movies_has_directors.directors_director_id
	
;

SELECT * FROM director
ORDER BY movie_name;