CREATE OR REPLACE VIEW producer AS
	SELECT movie.*, producers.first_name AS firstname, producers.last_name AS lastname
	FROM movie
	JOIN movies_has_producers ON movie.movie_id = movies_has_producers.movies_movie_id
	JOIN producers ON producers.producer_id = movies_has_producers.producers_producer_id
	ORDER BY lastname
;

SELECT * FROM producer;
