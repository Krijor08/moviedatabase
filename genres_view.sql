CREATE OR REPLACE VIEW genre AS
	SELECT movie.*, genres.name AS genrenm
	FROM movie
	JOIN movies_has_genres ON movie.movie_id = movies_has_genres.movies_movie_id
	JOIN genres ON genres.genre_id = movies_has_genres.genres_genre_id
ORDER BY genrenm;

SELECT * FROM genre;

