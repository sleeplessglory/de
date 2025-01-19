--SET search_path to doc;
CREATE TABLE cities(
	name 		varchar(80) PRIMARY KEY,
	location	point
);
CREATE TABLE weather(
	city	varchar(80) REFERENCES cities(name),
	temp_lo	int,
	temp_hi int,
	prcp	real,
	date	date
);
INSERT INTO weather VALUES('Berkeley', 45, 53, 0.0, '1994-11-28'); --error, since key(city)=(Berkeley) isn't present in the "cities" table