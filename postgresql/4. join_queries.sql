--SET search_path TO doc;
SELECT * FROM weather JOIN cities ON city = name; --INNER(omitted) JOIN 
SELECT city, temp_lo, temp_hi, prcp, date, location --explicit output columns
	FROM weather JOIN cities ON city = name;
SELECT w.city, w.temp_lo, w.temp_hi, w.prcp, w.date, c.location --qualify column names (in case duplicate ones)
	FROM weather w JOIN cities c ON w.city = c.name;
SELECT * --the same way of a join query (deprecated)
	FROM weather, cities
	WHERE city = name;
SELECT *
	FROM weather w LEFT JOIN cities c ON w.city = c.name; --LEFT OUTER(omitted) JOIN
SELECT *
	FROM weather w RIGHT JOIN cities c ON w.city = c.name;
SELECT *
	FROM weather w FULL JOIN cities c ON w.city = c.name;
SELECT w1.city, w1.temp_lo AS low, w1.temp_hi AS high,
	   w2.city, w2.temp_lo AS low, w2.temp_hi AS high
	FROM weather w1 JOIN weather w2
		ON w1.temp_lo < w2.temp_lo AND w1.temp_hi > w2.temp_hi;