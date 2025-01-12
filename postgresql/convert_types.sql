SELECT s.*,
	TO_CHAR(s.birth, 'dd.mm.yyyy') "1", --"1" means a new column with this name and the output within
	TO_CHAR(s.birth, 'dd.mm.yyyy hh24:mi:ss') "2",
	TO_CHAR(s.birth, 'fmDD Month YYYY') "3",
	TO_CHAR(s.birth, 'fmDth "of" Month, YYYY') "4",
	TO_CHAR(s.birth, 'DY') "5",
	TO_CHAR(s.birth, 'Day') "6",
	TO_CHAR(s.birth, 'DDSPTH') "7"
FROM sotrudniki s;

SELECT s.* FROM sotrudniki s WHERE TO_CHAR(s.birth, 'dd.mm.yyyy')='07.10.1985';
SELECT s.* FROM sotrudniki s WHERE TO_CHAR(s.birth, 'yyyy')='1985';
SELECT s.* FROM sotrudniki s WHERE TO_CHAR(s.birth, 'mm')='08';
SELECT now(); --current system date and time
SELECT TO_CHAR(now(), 'dd.mm.yyyy HH24:MI:SS');


