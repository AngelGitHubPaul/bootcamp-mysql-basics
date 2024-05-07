-- Create a database
CREATE DATABASE music_db;

-- Remove a database
DROP DATABASE music_db;

-- Connection to MySQL via Terminal: mysql -u root -p
-- "-u" - stands for username
-- "root" - default username for SQL
-- "p" - stands for password
-- "" - empty values is the default password for SQL

-- List down the databases inside the DBMS
SHOW DATABASE;

-- Select database
USE music_db;

-- Create tables
/*
	CREATE TABLE table_name (
		column_name data_type other_options
	);
*/

CREATE TABLE users_table (
	id INT NOT NULL AUTO_INCREMENT,
	username VARCHAR(50) NOT NULL,
	password VARCHAR(50) NOT NULL,
	full_name VARCHAR(50) NOT NULL,
	contact_number INT,
	email VARCHAR(50),
	address VARCHAR(50),
	PRIMARY KEY (id)
);

-- To drop table
DROP TABLE users_table;

-- To show tables
SHOW TABLES;

CREATE TABLE artists (
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(50) NOT NULL,
	PRIMARY KEY (id)
)

DROP TABLE artists;

-- ALTER TABLE statement is used to add, delete, or modify columns in an existing table

-- To change the table name
-- From users_table --> user
ALTER TABLE users_table RENAME TO users;

-- To change/modify table column datatype and other options
ALTER TABLE users MODIFY contact_number INT NOT NULL;

-- To add column in existing table
ALTER TABLE users ADD birth_date DATE NULL AFTER full_name;

-- to delete column in existing table
ALTER TABLE users DROP COLUMN birth_date;

-- To change column name
ALTER TABLE users CHANGE COLUMN full_name fullname VARCHAR(50);

-- Describe a table allows us to see the table columns, data types and other/extra options
DESCRIBE users;

-- CONSTRAINT
	-- is used to specify the rules for the data table\
	-- constraint name
		-- fk_tablename_foreignkey_column

CREATE TABLE albums(
	id INT NOT NULL AUTO_INCREMENT,
	album_title VARCHAR(50) NOT NULL,
	date_released DATE NOT NULL,
	artist_id INT NOT NULL,
	PRIMARY KEY (id),
	CONSTRAINT fk_albums_artist_id
		FOREIGN KEY (artist_id) REFERENCES artists(id)
		ON UPDATE CASCADE
		ON DELETE RESTRICT
);


-- DATE - refers to YYYY-MM-DD
-- TIME - refers to HH:MM:SS
-- DATETIME - refers to YYYY-MM-DD HH:MM:SS

CREATE TABLE songs(
	id INT NOT NULL AUTO_INCREMENT,
	song_name VARCHAR(50) NOT NULL,
	length TIME NOT NULL,
	genre VARCHAR(50) NOT NULL,
	album_id INT NOT NULL,
	PRIMARY KEY (id),
	CONSTRAINT fk_songs_album_id
		FOREIGN KEY (album_id) REFERENCES albums(id)
		ON UPDATE CASCADE
		ON DELETE RESTRICT
);

CREATE TABLE playlists (
    id INT NOT NULL AUTO_INCREMENT,
    datetime_created DATETIME NOT NULL,
    user_id INT NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_playlists_user_id
        FOREIGN KEY (user_id) REFERENCES users(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

CREATE TABLE playlists_songs (
    id INT NOT NULL AUTO_INCREMENT,
    playlist_id INT NOT NULL,
    song_id INT NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_playlists_songs_playlist_id
        FOREIGN KEY (playlist_id) REFERENCES playlists(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT fk_playlists_songs_song_id
        FOREIGN KEY (song_id) REFERENCES songs(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);