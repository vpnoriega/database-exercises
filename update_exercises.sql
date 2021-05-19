USE codeup_test_db;
SELECT 'All Albums' AS 'Caption:';
SELECT * FROM albums;

SELECT 'All albums released before 1980' AS 'Caption:';
SELECT * FROM albums WHERE release_date < 1980;

SELECT 'All albums by Michael Jackson' AS 'Caption:';
SELECT  * FROM albums WHERE artist = 'Michael Jackson';
