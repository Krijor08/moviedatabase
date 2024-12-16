CREATE OR REPLACE VIEW soundtrack AS
	SELECT movie.movie_name AS movie_name, soundtracks.song_name, soundtracks.duration
	FROM movie
	JOIN soundtracks ON movie.movie_id = soundtracks.movies_id
;

SELECT * FROM producer
ORDER BY movie_id;