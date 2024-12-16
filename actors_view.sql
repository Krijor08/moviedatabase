CREATE OR REPLACE VIEW actor AS
	SELECT movie.movie_name AS movie, actors.first_name AS firstname, actors.last_name AS lastname
	FROM movie
	JOIN movies_has_actors ON movie.movie_id = movies_has_actors.movies_movie_id
	JOIN actors ON actors.actor_id = movies_has_actors.actors_actor_id
;

SELECT * FROM actor
ORDER BY movie;