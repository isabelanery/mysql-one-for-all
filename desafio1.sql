DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.Artists(
  artist_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  artist_name VARCHAR(100) NOT NULL
);

CREATE TABLE SpotifyClone.Albums(
  album_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  album_name VARCHAR(255) NOT NULL,
  release_year YEAR NOT NULL,
  artist_id INT,
    FOREIGN KEY (artist_id) REFERENCES Artists (artist_id)
);

CREATE TABLE SpotifyClone.Songs(
  music_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  music_name VARCHAR(255) NOT NULL,
  music_duration_seconds INT NOT NULL,
  id_album INT NOT NULL,
    FOREIGN KEY (id_album) REFERENCES Albums (album_id)
);

CREATE TABLE SpotifyClone.Subscription_plans(
  subscription_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  subscription_name VARCHAR(45) NOT NULL,
  subscription_value DOUBLE NOT NULL
);

CREATE TABLE SpotifyClone.Users(
  user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_name VARCHAR(255) NOT NULL,
  user_age YEAR NOT NULL,
  subscription_id INT NOT NULL,
    FOREIGN KEY (subscription_id) REFERENCES Subscription_plans (subscription_id),
  signature_date TIMESTAMP
);

CREATE TABLE SpotifyClone.Following_artists(
  user_id INT NOT NULL,
  artist_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES SpotifyClone.Users (user_id),
    FOREIGN KEY (artist_id) REFERENCES SpotifyClone.Artists (artist_id),
  CONSTRAINT follow_id PRIMARY KEY (user_id, artist_id)
);

CREATE TABLE SpotifyClone.History_played_songs(
  history_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  music_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users (user_id),
    FOREIGN KEY (music_id) REFERENCES Songs (music_id),
  listened_on TIMESTAMP
);

INSERT INTO SpotifyClone.Artists (artist_name)
VALUES
  ('Fog'),
  ('Freedie Shannon'),
  ('Lance Day'),
  ('Peter Strong'),
  ('Tyler Isle'),
  ('Walter Phoenix');

INSERT INTO SpotifyClone.Albums (album_name, release_year, artist_id)
VALUES
  ('Envious', 1990, 6),
  ('Exuberant', 1993, 6),
  ('Hallowed Steam', 1995, 4),
  ('Incandescent', 1998, 3),
  ('Temporary Culture', 2001, 2),
  ('Library of liberty', 2003, 2),
  ('Chained Down', 2007, 5),
  ('Cabinet of fools', 2012, 5),
  ('No guarantees', 2015, 5),
  ('Apparatus', 2015, 1);

INSERT INTO SpotifyClone.Songs
VALUES
  ('Soul For Us', 200, 1),
  ('Reflections Of Magic', 163, 1),
  ('Dance With Her Own', 116, 1),
  ('Troubles Of My Inner Fire', 203, 2),
  ('Time Fireworks', 152, 2),
  ('Magic Circus', 105, 3),
  ('Honey, So Do I', 207, 3),
  ("Sweetie, Let's Go Wild", 139, 3),
  ('She Knows', 244, 3),
  ('Fantasy For Me', 100 , 4),
  ('Celebration Of More', 146 , 4),
  ('Rock His Everything', 223 , 4),
  ('Home Forever', 231 , 4),
  ('Diamond Power', 241 , 4),
  ("Let's Be Silly", 132 , 4),
  ('Thang Of Thunder', 240 , 5),
  ('Words Of Her Life', 185 , 5),
  ('Without My Streets', 176 , 5),
  ('Need Of The Evening', 190 , 6),
  ('History Of My Roses', 222 , 6),
  ('Without My Love', 111 , 6),
  ('Walking And Game', 123 , 6),
  ('Young And Father', 197 , 6),
  ('Finding My Traditions', 179 , 7),
  ('Walking And Man', 229 , 7),
  ('Hard And Time', 135 , 7),
  ("Honey, I'm A Lone Wolf", 150 , 7),
  ("She Thinks I Won't Stay Tonight", 166 , 8),
  ("He Heard You're Bad For Me", 154 , 8),
  ("He Hopes We Can't Stay", 210 , 8),
  ('I Know I Know', 117 , 8),
  ("He's Walking Away", 159 , 9),
  ("He's Trouble", 138 , 9),
  ('I Heard I Want To Bo Alone', 120 , 9),
  ('I Ride Alone', 151 , 9),
  ('Honey', 79 , 10),
  ('You Cheated On Me', 95 , 10),
  ("Wouldn't It Be Nice", 213 , 10),
  ('Baby', 136 , 10),
  ('You Make Me Feel So..', 83 , 10);

INSERT INTO SpotifyClone.Subscription_plans (subscription_name, subscription_value)
VALUES
  ('gratuito', 0.00 ),
  ('universitário', 5.99 ),
  ('pessoal', 6.99 ),
  ('familiar', 7.99 );

INSERT INTO SpotifyClone.Users (user_name, user_age, subscription_id)
VALUES
  ('Thati', 23, 2019-10-20, 1),
  ('Cintia', 35, 2017-12-30, 4),
  ('Bill', 20, 2019-06-05, 2),
  ('Roger', 45, 2020-05-13, 3),
  ('Norman', 58, 2017-02-17, 3),
  ('Patrick', 33, 2017-01-06, 4),
  ('Vivian', 26, 2018-01-05, 2),
  ('Carol', 19 , 2018-02-14, 2),
  ('Angelina', 42, 2018-04-29, 4),
  ('Paul', 46, 2017-01-17, 4);

