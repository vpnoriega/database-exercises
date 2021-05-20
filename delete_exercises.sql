USE codeup_test_db;
-- Albums released after 1991
-- Albums with the genre 'disco'
-- Albums by 'Whitney Houston' or other

-- -- First:
-- SELECT * FROM quotes WHERE id = 3;
-- -- Convert to:
-- DELETE FROM quotes WHERE id = 3;


SELECT 'Albums released after 1991' AS 'Caption:';
-- SELECT * FROM albums WHERE date_released > 1991;
DELETE FROM albums WHERE release_date > 1991;

SELECT 'Albums with the genre Disco' AS 'Caption:';
-- SELECT * FROM albums WHERE genre = 'disco';
DELETE FROM albums WHERE genre = 'disco';

SELECT 'Albums by the Bee Gees' AS 'Caption:';
-- SELECT * FROM albums WHERE artist = 'Bee Gees';
DELETE FROM albums WHERE artist = 'Bee Gees';

