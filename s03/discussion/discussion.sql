-- [SECTION] Inserting a Record (CREATE)

/*
SYNTAX: 
	INSERT INTO table_name (column_name) VALUES (value);
*/

-- Inserting a single record
INSERT INTO artists (name) VALUES ("Psy");
INSERT INTO artists (name) VALUES ("Rivermaya");

-- Inserting a record with multiple columns
/*
SYNTAX:	
	INSERT INTO table_name (column_nameA, column_nameB) VALUES (valueA, valueB)
*/
INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Psy 6", "2013-08-15", 1);
INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Trip", "1996-02-14", 2);

INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Gangnam Style", 339, "K-pop", 1);

INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Kundiman", 534, "OPM", 2);
INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Kisapmata", 441, "OPM", 2);

-- Adding multiple records with one query
INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Kundiman", 534, "OPM", 2), ("Kisapmata", 441, "OPM", 2);

-- [SECTION] Selecting Records (RETRIEVE)

-- Show ALL record details
/*
SYNTAX:
	SELECT * FROM table_name;
	(*) means all columns will be show in the selected table
*/
SELECT * FROM songs;

-- Show records with selected columns
/*
SYNTAX:
	SELECT column_nameA, column_nameB FROM table_name;
*/
SELECT song_name, genre FROM songs;

SELECT album_title, date_released FROM albums;

-- Show records that meets a certain condition
/*
SYNTAX:
	SELECT column_nameA, column_nameB FROM table_name WHERE condition;
	"WHERE" clause is used to filter records and to extract only those records that fulfull a specific condition
*/
SELECT song_name FROM songs WHERE genre = "OPM";

SELECT song_name FROM songs WHERE length < 400;

-- Show records with multiple conditions
-- AND clause
	-- SELECT column_name FROM table_name WHERE condition1 AND condition 2
-- OR clause
	-- SELECT column_name FROM table_name WHERE condition1 OR condition 2

-- Display the title and length of OPM songs that are more than 4 minutes and 40 seconds
SELECT song_name, length FROM songs WHERE length > 430 AND genre = "OPM";
-- SELECT song_name, length FROM songs WHERE length > 445 AND genre = "OPM";

-- [SECTION] Updating records (UPDATE)

-- Updating a single column of a record
/*
SYNTAX:
	UPDATE table_name SET column_name = new_value WHERE condition;
	"SET" keyword is used to specify which column(s) you want to update and what value(s) you want to assign to them
*/

-- Update length of "Kundiman" to 4 minutes and 24 seconds
UPDATE songs SET length = 424 WHERE song_name = "Kundiman";

-- Updating multiple columns of records
/*
SYNTAX:
	UPDATE table_name SET column_name1 = new_value1, column_name2 = new_value2 WHERE condition;
*/
-- Update the album with a title of 'Psy 6' and change its title "Psy 6 (Six Rules)" and date released July 15, 2012
-- Psy 6 to Psy 6 (Six Rules)
-- 2013-08-15 to 2012-07-15

UPDATE albums SET album_title = "Psy 6 (Six Rules)", date_released = 20120715 WHERE id = 1;

-- [SECTION] Deleting a record (DELETE)
/*
SYNTAX: 
	DELETE FROM table_name WHERE condition;
	Note: Removing the WHERE clause will remove ALL rows in the table
*/

-- Delete all OPM songs that are more than 4 minutes and 30 seconds
DELETE FROM songs WHERE genre = "OPM" AND length > 430;