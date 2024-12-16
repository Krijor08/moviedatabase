CREATE OR REPLACE VIEW producer AS
	SELECT movie.movie_id, movie.movie_name, producers.first_name AS producer_firstname, producers.last_name AS producer_lastname
	FROM movie
	JOIN movies_has_producers ON movie.movie_id = movies_has_producers.movies_movie_id
	JOIN producers ON producers.producer_id = movies_has_producers.producers_producer_id
;

SELECT * FROM producer
ORDER BY movie_id;