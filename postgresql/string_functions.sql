SELECT LENGTH('Hello, World!') FROM dual; --"dual" table is used (in Oracle) when we don't need any table but have to reference one
SELECT LOWER('Hey') FROM dual; --"FROM dual" is not required in PostgreSQL (has to be created manually at all) 
SELECT UPPER('I love it');
SELECT CONCAT('Hello ','World!'); --Adding 2 strings together
SELECT SUBSTR('Hello, World',1,5); --select 5 characters starting with the 1st
--SELECT INSTR('Hello, World!','W') FROM dual; --Oracle version
--SELECT INSTR('Hello, World!','o', -1) FROM dual; --Oracle version. Finding 'o' position from the end
SELECT POSITION('W' IN 'Hello, World!'); --PostgreSQL version. Returns the position within the string
SELECT STRPOS('Hello, World!', 'W'); --same as above
SELECT LPAD('yeah!', 10, '!'); --Adding "!" from the left to make the string length=10
SELECT RPAD('yeah!', 10, '*'); --same but from the right
SELECT REPLACE('jack and jue','j','bl'); --replacing "j" to "bl" in the string
SELECT TRIM('H' FROM 'Hello'); --removes "H" from the string
SELECT TRIM('  Hello! '); --removes all the white spaces from the left and the right
SELECT RTRIM(' Hello!   '); --removes white spaces from the right only
SELECT LTRIM('   Hello!  '); --from the left only
SELECT ROUND(45.925, 2); --rounds the given number to 2 decimal places (45,93)
SELECT TRUNC(49.898, 2); --always rounds down (49,89)
SELECT MOD(1800, 500); --returns the remainder (300)

SELECT SUBSTR('Hello, World!', 1, LENGTH('Hello, World!')-8); --functions can be used within others
SELECT LOWER(s.surname), s.* FROM sotrudniki s WHERE s.surname LIKE 'в%'; --empty table will be returned since all surnames start with an upper case