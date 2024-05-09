SELECT * FROM artists WHERE name LIKE "%d%";

SELECT * FROM songs WHERE length < 350;

SELECT album_title, song_name, length FROM albums
    JOIN songs ON albums.id = songs.album_id;

SELECT * FROM artists
    JOIN albums ON artists.id = albums.artist_id
    WHERE album_title LIKE "%a%";

SELECT * FROM albums ORDER BY album_title DESC LIMIT 4;

SELECT * FROM albums
    JOIN songs ON albums.id = songs.album_id
    ORDER BY album_title DESC;