--SET search_path TO doc; --in order to change the schema to "doc"
CREATE TABLE IF NOT EXISTS weather(
	city	varchar(80),
	temp_lo	int,	--low temperature
	temp_hi	int,	--high temperature
	prcp	real,	--precipitation ("real" stores single precision floating-point numbers)
	date	date
);
CREATE TABLE IF NOT EXISTS cities(
	name		varchar(80),
	location	point --"point" is a PostgreSQL-specific data type
);
DROP TABLE cities;
CREATE TABLE IF NOT EXISTS cities(
	name		varchar(80),
	location	point
);