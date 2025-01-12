SELECT * FROM sotrudniki t WHERE t.id BETWEEN 1 AND 4 ORDER BY t.firstname ASC;
SELECT * FROM sotrudniki s WHERE s.dept_id BETWEEN 8 AND 10 ORDER BY s.id DESC;
SELECT * FROM sotrudniki s WHERE s.id BETWEEN 1 AND 7 ORDER BY s.birth ASC FETCH FIRST 4 ROWS ONLY;
SELECT t.id, t.surname, t.firstname FROM sotrudniki t WHERE t.id BETWEEN 2 AND 7 ORDER BY 2 ASC, 3 DESC FETCH FIRST 4 ROWS ONLY; --"ORDER BY 2" (by the second column mentioned in SELECT, same for "ORDER BY 3")