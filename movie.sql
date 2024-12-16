USE movies;

CREATE TABLE IF NOT EXISTS soundtracks (
	song_id INT NOT NULL AUTO_INCREMENT,
    movies_id INT NOT NULL,
    song_name VARCHAR(50),
    duration TIME,
	PRIMARY KEY (song_id),
    FOREIGN KEY (movies_id) REFERENCES movie(movie_id)
);

SELECT * FROM actors;
SELECT * FROM directors;
SELECT * FROM genres;
SELECT * FROM movie;
SELECT * FROM movies_has_actors;
SELECT * FROM movies_has_directors;
SELECT * FROM movies_has_genres;
SELECT * FROM movies_has_producers;
SELECT * FROM performers_etc;
SELECT * FROM producers;
SELECT * FROM roles;
SELECT * FROM soundtracks;

DESC soundtracks;