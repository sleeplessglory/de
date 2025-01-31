SELECT * FROM countries CROSS JOIN address; --the result consists of N*M rows, where N - number of rows within the 1st table, M - within the 2nd
--This request is equal to:
SELECT * FROM countries, address;