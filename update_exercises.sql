USE codeup_test_db;
-- (artist, name, release_date, genre, sales)

-- Write SELECT statements to output each of the following with a caption:
-- All albums in your table.
-- All albums released before 1980
-- All albums by Michael Jackson

-- I.E:
--UPDATE quotes
--SET author_first_name = 'Samuel', author_last_name = 'Clemens'
--WHERE id = 4;
/** If you omit the WHERE clause in an UPDATE statement, the update will apply to all rows on that table.*/

SELECT 'All albums in table' AS 'Caption:';
SELECT * FROM albums;
-- Make all the albums 10 times more popular (sales * 10)
UPDATE albums SET sales = sales * 10;
SELECT * FROM albums; -- to see your results after the update

--?? change the select at the end to 1800
SELECT 'All albums released before 1980' AS 'Caption:';
SELECT * FROM albums WHERE release_date < 1980;
-- Move all the albums before 1980 back to the 1800s.
UPDATE albums SET release_date = 1800 WHERE release_date < 1980;
SELECT * FROM albums WHERE release_date < 1800; -- to see your results after the update


SELECT 'All albums by Michael Jackson' AS 'Caption:';
SELECT * FROM albums WHERE artist = 'Michael Jackson';
-- Change 'Michael Jackson' to 'Peter Jackson'
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT * FROM albums WHERE artist = 'Michael Jackson'; -- to see your results after the update