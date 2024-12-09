USE movies;

CREATE TABLE IF NOT EXISTS soundtracks (
	song_id INT NOT NULL AUTO_INCREMENT,
    movies_id INT NOT NULL,
    song_name VARCHAR(50),
    duration TIME,
	PRIMARY KEY (song_id),
    FOREIGN KEY (movies_id) REFERENCES movie(movie_id)
);

SELECT * FROM movie;SELECT * FROM soundtracks;
SELECT * FROM movies_has_genres;


ALTER TABLE soundtracks
ADD COLUMN performers VARCHAR(60);
