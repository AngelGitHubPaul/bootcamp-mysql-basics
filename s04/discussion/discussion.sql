-- Add 5 artists, at least 2 albums each, 1-2 songs per album to expand the data that we can use.

-- Add five artists
    -- Taylor Swift
    -- Lady Gaga
    -- Justine Bieber
    -- Ariana Grande
    -- Bruno Mars

INSERT INTO artists (name) VALUES ("Taylor Swift");
INSERT INTO artists (name) VALUES ("Lady Gaga");
INSERT INTO artists (name) VALUES ("Justine Bieber");
INSERT INTO artists (name) VALUES ("Ariana Grande");
INSERT INTO artists (name) VALUES ("Bruno Mars");

-- Insert the following records in their respective tables
    -- Artist: Taylor Swift
        -- Album: Fearless 2008-11-11
            -- Songs:
                -- Fearless, 402, "Pop Rock"
                -- Love Story, 355, "Country Pop"
        -- Album: Red, 2012-10-22
            -- Songs:
                -- State of Grace, 455, "Rock, Alternative Rock, Arena Rock"
                -- Red, 341, "Country"

    -- Artist: Lady Gaga
        -- Album: A Star Is Born, 2018-10-05
            -- Songs:
                -- Black Eyes, 304, "Rock and Roll"
                -- Shallow, 336, "Country, Rock, Folk Rock"
        -- Album: Born This Way, 2011-05-23
            -- Song: Born This Way, 420, "Electropop"

    -- Artist: Justin Bieber
        -- Album: Purpose, 2015-11-13
            -- Song: Sorry, 320, "Dancehall-poptropical Housemoombahton"
        -- Album: Believe, 2012-06-15
            -- Song: Boyfriend, 252, "Pop"

    -- Artist: Ariana Grande
        -- Album: Dangerous Woman, 2016-05-20
            -- Song: Into You, 405, "EDM House"
        -- Album: Thank U, Next, 2019-02-08
            -- Song: Thank U, Next, 327, "Pop, R&B"

    -- Artist: Bruno Mars
        -- Album: 24k Magic, 2016-11-18
            -- Song: 24k Magic, 346, "Funk, Disco, R&B"
        -- ALbum: Earth to Mars,2011-02-07
            -- Song: Lost, 321, "Pop"

-- Taylor Swift Albums and Songs
-- Albums
INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Fearless", "2008-11-11", 3);
INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Red", "2012-10-22", 3);

-- Songs
INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Fearless", 402, "Pop Rock", 3);
INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Love Story", 355, "Country Pop", 3);
INSERT INTO songs (song_name, length, genre, album_id) VALUES ("State of Grace", 455, "Rock, Alternative Rock, Arena Rock", 4);
INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Red", 341, "Country", 4);

-- Lady Gaga Albums and Songs
-- Albums
INSERT INTO albums (album_title, date_released, artist_id) VALUES ("A Star Is Born", "2018-10-05", 4);
INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Born This Way", "2011-05-23", 4);

-- Songs
INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Black Eyes", 304, "Rock and roll", 5);
INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Shallow", 336, "Country, Rock, Folk Rock", 5);
INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Born This Way", 420, "Electropop", 6);

-- Justin Bieber Albums and Songs
-- Albums
INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Purpose", "2015-11-13", 5);
INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Believe", "2012-06-15", 5);

-- Songs
INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Sorry", 320, "Dancehall-poptropical Housemoombahton", 7);
INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Boyfriend", 252, "Pop", 8);

-- Ariana Grande Albums and Songs
-- Albums
INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Dangerous Woman", "2016-05-20", 6);
INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Thank U, Next", "2019-02-08", 6);

-- Songs
INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Into You", 405, "EDM House", 9);
INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Thank U Next", 327, "Pop, R&B", 10);

-- Bruno Mars Albums and Songs
-- Albums
INSERT INTO albums (album_title, date_released, artist_id) VALUES ("24K Magic", "2016-11-18", 7);
INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Earth to Mars", "2011-02-07", 7);

-- Songs
INSERT INTO songs (song_name, length, genre, album_id) VALUES ("24K Magic", 346, "Funk, Disco, R&B", 11);
INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Lost", 321, "Pop", 12);

-- [SECTION] Advanced Selects

-- Show only specific number of records.
-- "LIMIT" keyword - is used to specify number of records to return 

SELECT * FROM songs LIMIT 5;

-- Combine "LIMIT" with "WHERE" clause
SELECT * FROM songs WHERE length >= 430 LIMIT 5;

-- Exclude a record 
-- The exclamation point(!) is called NOT condition/operator

-- Exclude songs belongs to 24K Magic
SELECT * FROM songs WHERE album_id != 11;

SELECT * FROM songs WHERE album_id != 5 AND album_id != 6;

-- Finiding records using a comparison operator
-- >, <, >=, <=
SELECT * FROM songs WHERE length >= 330;

-- Getting records with multiple condition 

SELECT * FROM songs WHERE genre = "Pop" OR genre = "K-Pop";

-- IN clause
SELECT * FROM songs WHERE genre IN ("Pop", "K-Pop");

-- Show records with a partial match
-- "LIKE" keyword which is used in a WHERE clause to search for a specified pattern in a column

-- There are two wildcard operators used in conjunction with LIKE 
    -- "%" which represents zero, one, or more characters
    -- "_" which represents a single character

-- Find values with a match at the start
SELECT * FROM songs WHERE song_name LIKE "th%";

-- Find values with a match at the end
SELECT * FROM songs WHERE song_name LIKE "%ce";

-- Find values with a match at any position
SELECT * FROM songs WHERE song_name LIKE "%st%";

-- Find values wit a match of a specifi length/pattern
SELECT * FROM songs WHERE song_name LIKE "__rr_";

SELECT * FROM albums WHERE date_released LIKE "20__-0_-15";

-- Find values with a match at certain position
SELECT * FROM albums WHERE album_title LIKE "_ur%";

-- Find values with a match at any position
SELECT * FROM albums WHERE album_title LIKE "%_r%";

-- Sorting Records 
-- "ORDER BY" keyword used to sort the results to ascending (ASC) or descending (DESC) order
SELECT * FROM songs ORDER BY song_name;
SELECT * FROM songs ORDER BY song_name ASC;
SELECT * FROM songs ORDER BY song_name DESC;

SELECT * FROM songs WHERE album_id != 5 AND album_id != 6 ORDER BY song_name DESC;

-- Showing records with distinct values
-- DISTINCT keyword eliminated duplicate rows and display unique list of values
SELECT DISTINCT genre FROM songs;

-- Count the number of rows in a table
SELECT COUNT(*) FROM songs;
SELECT COUNT(DISTINCT genre) FROM songs;

-- [SECTION] Table Joins
-- To retrieve data from multiple tables

-- Joining two tables
/*
SYNTAX: 
    SELECT column_name FROM table1 
        JOIN table2 ON table1.id = table2.foreignkey_column;
*/

-- Table 1 - Artists
-- PK - id
-- Table 2 - Albums
-- FK - artist_id

SELECT * FROM artists
    JOIN albums ON artists.id = albums.artist_id;

SELECT * FROM artists
    JOIN albums ON artists.id = albums.artist_id
    WHERE date_released <= 20151201;

-- Joining more than 2 tables 
/*
SYNTAX: 
    SELECT column_name FROM table1 
        JOIN table2 ON table1.id = table2.foreignkey_column
        JOIN table3 ON table2.id = table3.foreignkey_column;
*/

-- Table 1 - Artists
-- PK - id
-- Table 2 - Albums
-- FK - artist_id
-- Table 3 - Songs
-- FK - album_id

SELECT * FROM artists
    JOIN albums ON artists.id = albums.artist_id
    JOIN songs ON albums.id = songs.album_id;

SELECT name, album_title, song_name, length, genre FROM artists
    JOIN albums ON artists.id = albums.artist_id
    JOIN songs ON albums.id = songs.album_id;

-- Providing aliases
SELECT name AS "Artist Name", album_title AS "Album", song_name AS "Song", length, genre FROM artists
    JOIN albums ON artists.id = albums.artist_id
    JOIN songs ON albums.id = songs.album_id;
