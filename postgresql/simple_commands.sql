select t.*, 1, 'дополнение' from sotrudniki t; --additional columns with the same amount of lines
select * FROM sotrudniki limit 3; --first 3 rows only ("where rownum <=3" for Oracle SQL)
select '''' from dual; -- '
select '''''' from dual; -- "
select 'o''conner' from dual; -- o'conner
select ''''' from dual; --Error
select 'o'''conner' from dual; --Error