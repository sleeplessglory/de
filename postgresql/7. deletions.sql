--SET search_path TO doc;
DELETE FROM weather WHERE city = 'Hayward'; --delete a specific row
SELECT * FROM weather;
DELETE FROM weather; --delete all rows