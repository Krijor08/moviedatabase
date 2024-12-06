USE movies;
SELECT * FROM movie;

CREATE TABLE IF NOT EXISTS soundtracks (
	song_id INT NOT NULL AUTO_INCREMENT,
    movie_id INT NOT NULL,
    song_name VARCHAR(50),
    duration TIME,
	PRIMARY KEY (song_id),
    FOREIGN KEY (movie_id) REFERENCES movies.movie_id
);

INSERT INTO movies_has_genres (movies_movie_id, genres_genre_id)
VALUES 
	(2, 1),
    (2, 2),
    (3, 1),
    (3, 2)
;

INSERT INTO genres (name)
VALUES 
	('action'),
    ('comedy'),
    ('horror'),
    ('documentary'),
    ('romance'),
    ('musical')
;

INSERT INTO actors (first_name, last_name, age, still_alive)
VALUES 
	('Burt', 'Reynolds', 82, FALSE),
    ('Jerry', 'Reed', 71, FALSE),
    ('Sally', 'Field', NULL, TRUE),
    ('Jackie', 'Gleason', 71, FALSE);

SELECT * FROM actors;
