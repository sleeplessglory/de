SET search_path TO doc;
CREATE VIEW myview AS --encapsulates the details of the structure of a tables
	SELECT name, temp_lo, temp_hi, prcp, date, location
		FROM weather, cities
		WHERE city = name;
SELECT * FROM myview; --no need to type the query above again