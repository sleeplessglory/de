--SET search_path TO doc;
SELECT MAX(temp_lo) FROM weather;
--SELECT city FROM weather
	--WHERE temp_lo = MAX(temp_lo); --error for aggregate functions, since in "WHERE" values have to be calculated before!
SELECT city FROM weather
	WHERE temp_lo = (SELECT MAX(temp_lo) FROM weather); --correct, since it's calculated within a subquery (computes its aggregate separately)
SELECT city, COUNT(*), MAX(temp_lo)
	FROM weather
	GROUP BY city;
SELECT city, COUNT(*), MAX(temp_lo)
	FROM weather
	GROUP BY city
	HAVING max(temp_lo) < 40;
SELECT city, COUNT(*), MAX(temp_lo)
	FROM weather
	WHERE city LIKE 'S%'
	GROUP BY city;
--WHERE selects input rows before groups and aggregations are computed
--HAVING selects group rows after groups and aggregations are computed
SELECT city, COUNT(*) FILTER (WHERE temp_lo < 45), MAX(temp_lo) --FILTER removes rows only from the input of the particular aggregate function it's attached to (COUNT this time)
	FROM weather
	GROUP BY city;