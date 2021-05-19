USE codeup_test_db;
-- (artist, name, release_date, genre, sales)

-- The name of all albums by Pink Floyd.
-- The year Sgt. Pepper's Lonely Hearts Club Band was released
-- The genre for Nevermind
-- Which albums were released in the 1990s
-- Which albums had less than 20 million certified sales
-- All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?

-- SELECT author_last_name, content FROM quotes;
SELECT name FROM albums WHERE artist = 'Pink Floyd';
SELECT release_date FROM albums WHERE artist = 'Sgt. Pepper''s Lonely Hearts Club Band';
SELECT genre FROM albums WHERE name = 'Nevermind';
SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 1999;
SELECT * FROM albums WHERE sales <20;
SELECT * FROM albums WHERE genre = 'Rock';