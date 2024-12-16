 CREATE OR REPLACE VIEW everything AS
	SELECT movie.movie_name, movie.release_date, movie.rating, actors.first_name AS actors_first_name, actors.last_name AS actor_surname, 
    actors.dob AS actor_dob, actors.died_age AS actor_death_age, directors.first_name AS director_firstname, directors.last_name AS director_surname, 
    directors.dob AS director_dob, directors.died_age AS director_death_age, genres.name AS genre, producers.first_name AS producer_firstname, 
    producers.last_name AS producer_surname, soundtracks.song_name, soundtracks.duration, roles.role_name, performers_etc.first_name, performers_etc.surname
    
	FROM movie
    
	LEFT JOIN movies_has_actors ON movie.movie_id = movies_has_actors.movies_movie_id
	LEFT JOIN actors ON actors.actor_id = movies_has_actors.actors_actor_id
    
    LEFT JOIN movies_has_directors ON movie.movie_id = movies_has_directors.movies_movie_id
	LEFT JOIN directors ON directors.director_id = movies_has_directors.directors_director_id

    LEFT JOIN movies_has_genres ON movie.movie_id = movies_has_genres.movies_movie_id
	LEFT JOIN genres ON genres.genre_id = movies_has_genres.genres_genre_id
    
    LEFT JOIN movies_has_producers ON movie_id = movies_has_producers.movies_movie_id
	LEFT JOIN producers ON producers.producer_id = movies_has_producers.producers_producer_id
    
    LEFT JOIN soundtracks ON soundtracks.movies_id = movie.movie_id    
	LEFT JOIN performers_etc ON performers_etc.soundtrack_id = soundtracks.song_id    
    LEFT JOIN roles ON roles.role_id = performers_etc.role_id
;

SELECT * FROM everything
ORDER BY movie_name;


