--SET search_path TO doc;
BEGIN; --transactions are surrounded by BEGIN and COMMIT commands
UPDATE accounts SET balance = balance - 100.00
	WHERE name = 'Alice'
COMMIT;

BEGIN
UPDATE accounts SET balance = balance - 100.00
	WHERE name = 'Alice';
SAVEPOINT my_savepoint;
UPDATE accounts SET balance = balance + 100.00
	WHERE name = 'Bob';
--realise that we actually need Wally's account instead
ROLLBACK TO my_savepoint;
UPDATE accounts SET balance = balance + 100.00
	WHERE name = 'Wally';
COMMIT;
--transactions ain't visible for the system untill it commits;
--rollbacks to savepoints can be executed any amount of times;
--releasing or rolling back to a savepoint will release all savepoints defined after it;
--releasing unused savepoints frees up some space;