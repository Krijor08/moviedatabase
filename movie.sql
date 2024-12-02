USE movies;
SELECT * FROM movies;

CREATE TABLE IF NOT EXISTS soundtracks (
	song_id INT NOT NULL AUTO_INCREMENT,
    movie_id INT NOT NULL,
    song_name VARCHAR(50),
    duration TIME,
	PRIMARY KEY (song_id),
    FOREIGN KEY (movie_id) REFERENCES movies.movie_id
);

INSERT INTO movies (movie_name, release_date, rating)
VALUES 
	('Smokey and the Bandit', '1977-05-19', 70),
	('', '', 1)
;

INSERT INTO genres (name)
VALUES 
	('action'),
    ('comedy'),
    ('horror'),
    ('documentary')
;
