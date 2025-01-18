SELECT * FROM weather; --"*" stands for all columns
SELECT city, (temp_hi+temp_lo)/2 AS temp_avg, date FROM weather; --combining two columns into the new with "AS"
SELECT * FROM weather
	WHERE city = 'San Francisco' AND (prcp > 0.0 OR temp_lo = 37);
SELECT * FROM weather
	ORDER BY city; --only sorted by "city" column
SELECT * FROM weather
	ORDER BY city, temp_lo; --now also by "temp_lo" after sorting by "city"
SELECT DISTINCT city FROM weather; --unique "city" names without duplicates
SELECT DISTINCT city FROM weather
	ORDER BY city;