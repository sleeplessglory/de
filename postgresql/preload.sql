create table if not exists SOTRUDNIKI
(id numeric (5) not null,
surname    VARCHAR(100),
firstname  VARCHAR(50),
secondname VARCHAR(50),
birth      DATE,
dept_id    NUMERIC(5));

create table if not exists OTDEL
(id   NUMERIC(5) not null,
name VARCHAR(100));

create table if not exists ADDRESS
(id        NUMERIC(5),
num_house VARCHAR(100),
emp_id    NUMERIC(5),
street    VARCHAR(20));

insert into sotrudniki (ID, SURNAME, FIRSTNAME, SECONDNAME, BIRTH, DEPT_ID)
values (2, 'Васильев', 'Василий', 'Васильевич', to_date('05-08-1985', 'dd-mm-yyyy'), 9);

insert into sotrudniki (ID, SURNAME, FIRSTNAME, SECONDNAME, BIRTH, DEPT_ID)
values (3, 'O''Conner', 'James', null, to_date('07-10-1985', 'dd-mm-yyyy'), 10);

insert into sotrudniki (ID, SURNAME, FIRSTNAME, SECONDNAME, BIRTH, DEPT_ID)
values (4, 'Васильев', 'Олег', 'Олегович', to_date('11-03-1987', 'dd-mm-yyyy'), 9);

insert into sotrudniki (ID, SURNAME, FIRSTNAME, SECONDNAME, BIRTH, DEPT_ID)
values (5, 'Иванов', 'Владимир', 'Владимирович', to_date('15-04-1980', 'dd-mm-yyyy'), 8);

insert into sotrudniki (ID, SURNAME, FIRSTNAME, SECONDNAME, BIRTH, DEPT_ID)
values (6, 'Kent', 'Robert', null, to_date('03-07-1984', 'dd-mm-yyyy'), null);

insert into sotrudniki (ID, SURNAME, FIRSTNAME, SECONDNAME, BIRTH, DEPT_ID)
values (7, 'Марьина', 'Мария', 'Михайловна', to_date('17-09-1983', 'dd-mm-yyyy'), null);

insert into sotrudniki (ID, SURNAME, FIRSTNAME, SECONDNAME, BIRTH, DEPT_ID)
values (1, 'Иванов', 'Иван', 'Иванович', to_date('01-01-1981', 'dd-mm-yyyy'), 8);

insert into otdel (ID, NAME)
values (10, 'HR');

insert into otdel (ID, NAME)
values (9, 'Automatic');

insert into otdel (ID, NAME)
values (8, 'Support');

insert into otdel (ID, NAME)
values (11, 'Service');

insert into address (ID, NUM_HOUSE, EMP_ID, STREET)
values (1, '10', 1, 'ЛЬВОВА');

insert into address (ID, NUM_HOUSE, EMP_ID, STREET)
values (2, '15', 2, 'ПОБЕДЫ');

insert into address (ID, NUM_HOUSE, EMP_ID, STREET)
values (3, '14', 3, 'ЛЕНИНСКАЯ');

insert into address (ID, NUM_HOUSE, EMP_ID, STREET)
values (4, '81', 14, 'НАБЕРЕЖНАЯ');

insert into address (ID, NUM_HOUSE, EMP_ID, STREET)
values (5, '30', 5, 'ЛЕСНАЯ');

insert into address (ID, NUM_HOUSE, EMP_ID, STREET)
values (6, '43', 16, 'ТИХАЯ');

insert into address (ID, NUM_HOUSE, EMP_ID, STREET)
values (7, '57', 17, 'ШУМНАЯ');

create table if not exists locations (LOCATION_ID NUMERIC, STREET_ADDRESS VARCHAR(50), city VARCHAR(20), country_id VARCHAR(2));

insert into locations values (1000, '1297 Via Cola di Rie', 'Roma', 'IT'),
(1100, '93091 Calle della Testa', 'Venice', 'IT'),
(1200, '2017 Shinjuku-ku', 'Tokyo', 'JP'),
(1300, '9450 Kamiya-cho', 'Hiroshima', 'JP'),
(1400, '2014 Jabberwocky Rd', 'Southlake', 'US'),
(1500, '2011 Interiors Blvd', 'South San Francisco', 'US'),
(1600, '2007 Zagora St', 'South Brunswick', 'US'),
(1700, '2004 Charade Rd', 'Seattle', 'US'),
(1800, '147 Spadina Ave', 'Toronto', 'CA'),
(1900, '6092 Boxwood St', 'Whitehorse', 'CA'),
(2000, '40-5-12 Laogianggen', 'Beijing', 'CN'),
(2100, '1298 Vileparle (E)', 'Bombay', 'IN'),
(2200, '12-98 Victoria Street', 'Sydney', 'AU'),
(2300, '198 Clementi North', 'Singapore', 'SG'),
(2400, '8204 Arthur St', 'London', 'UK'),
(2500, 'Magdalen Centre, The Oxford Science Park', 'Oxford', 'UK'),
(2600, '9702 Chester Road', 'Stretford', 'UK'),
(2700, 'Schwanthalerstr. 7031', 'Munich', 'DE'),
(2800, 'Rua Frei Caneca 1360 ', 'Sao Paulo', 'BR'),
(2900, '20 Rue des Corps-Saints', 'Geneva', 'CH'),
(3000, 'Murtenstrasse 921', 'Bern', 'CH'),
(3100, 'Pieter Breughelstraat 837', 'Utrecht', 'NL'),
(3200, 'Mariano Escobedo 9991', 'Mexico City', 'MX');

create table if not exists employees (EMPLOYEE_ID NUMERIC, FIRST_NAME VARCHAR(20)
                            ,LAST_NAME VARCHAR(20), email VARCHAR(20), hire_date date
                           , jod_id VARCHAR(20), salary NUMERIC, manager_id NUMERIC, department_id NUMERIC);

insert into employees values 
(100, 'Steven', 'King', NULL, '17-JUN-03'::date, 'AD_PRES', 24000, NULL, 90),
(101, 'Neena', 'Kochhar', NULL, '21-SEP-05'::date, 'AD_VP', 17000, 100, 90),
(102, 'Lex', 'De Haan', NULL, '13-JAN-01'::date, 'AD_VP', 17000, 100, 90),
(103, 'Alexander', 'Hunold', NULL, '03-JAN-06'::date, 'IT_PROG', 9000, 102, 60),
(104, 'Bruce', 'Ernst', NULL, '21-MAY-07'::date, 'IT_PROG', 6000, 103, 60),
(105, 'David', 'Austin', NULL, '25-JUN-05'::date, 'IT_PROG', 4800, 103, 60),
(106, 'Valli', 'Pataballa', NULL, '05-FEB-06'::date, 'IT_PROG', 4800, 103, 60),
(107, 'Diana', 'Lorentz', NULL, '07-FEB-07'::date, 'IT_PROG', 4200, 103, 60),
(108, 'Nancy', 'Greenberg', NULL, '17-AUG-02'::date, 'FI_MGR', 12008, 101, 100),
(109, 'Daniel', 'Faviet', NULL, '16-AUG-02'::date, 'FI_ACCOUNT', 9000, 108, 100),
(110, 'John', 'Chen', NULL, '28-SEP-05'::date, 'FI_ACCOUNT', 8200, 108, 100),
(111, 'Ismael', 'Sciarra', NULL, '30-SEP-05'::date, 'FI_ACCOUNT', 7700, 108, 100),
(112, 'Jose Manuel', 'Urman', NULL, '07-MAR-06'::date, 'FI_ACCOUNT', 7800, 108, 100),
(113, 'Luis', 'Popp', NULL, '07-DEC-07'::date, 'FI_ACCOUNT', 6900, 108, 100),
(114, 'Den', 'Raphaely', NULL, '07-DEC-02'::date, 'PU_MAN', 11000, 100, 30),
(115, 'Alexander', 'Khoo', NULL, '18-MAY-03'::date, 'PU_CLERK', 3100, 114, 30),
(116, 'Shelli', 'Baida', NULL, '24-DEC-05'::date, 'PU_CLERK', 2900, 114, 30),
(117, 'Sigal', 'Tobias', NULL, '24-JUL-05'::date, 'PU_CLERK', 2800, 114, 30),
(118, 'Guy', 'Himuro', NULL, '15-NOV-06'::date, 'PU_CLERK', 2600, 114, 30),
(119, 'Karen', 'Colmenares', NULL, '10-AUG-07'::date, 'PU_CLERK', 2500, 114, 30),
(120, 'Matthew', 'Weiss', NULL, '18-JUL-04'::date, 'ST_MAN', 8000, 100, 50),
(121, 'Adam', 'Fripp', NULL, '10-APR-05'::date, 'ST_MAN', 8200, 100, 50),
(122, 'Payam', 'Kaufling', NULL, '01-MAY-03'::date, 'ST_MAN', 7900, 100, 50),
(123, 'Shanta', 'Vollman', NULL, '10-OCT-05'::date, 'ST_MAN', 6500, 100, 50),
(124, 'Kevin', 'Mourgos', NULL, '16-NOV-07'::date, 'ST_MAN', 5800, 100, 50),
(125, 'Julia', 'Nayer', NULL, '16-JUL-05'::date, 'ST_CLERK', 3200, 120, 50),
(126, 'Irene', 'Mikkilineni', NULL, '28-SEP-06'::date, 'ST_CLERK', 2700, 120, 50),
(127, 'James', 'Landry', NULL, '14-JAN-07'::date, 'ST_CLERK', 2400, 120, 50),
(128, 'Steven', 'Markle', NULL, '08-MAR-08'::date, 'ST_CLERK', 2200, 120, 50),
(129, 'Laura', 'Bissot', NULL, '20-AUG-05'::date, 'ST_CLERK', 3300, 121, 50),
(130, 'Mozhe', 'Atkinson', NULL, '30-OCT-05'::date, 'ST_CLERK', 2800, 121, 50),
(131, 'James', 'Marlow', NULL, '16-FEB-05'::date, 'ST_CLERK', 2500, 121, 50),
(132, 'TJ', 'Olson', NULL, '10-APR-07'::date, 'ST_CLERK', 2100, 121, 50),
(133, 'Jason', 'Mallin', NULL, '14-JUN-04'::date, 'ST_CLERK', 3300, 122, 50),
(134, 'Michael', 'Rogers', NULL, '26-AUG-06'::date, 'ST_CLERK', 2900, 122, 50),
(135, 'Ki', 'Gee', NULL, '12-DEC-07'::date, 'ST_CLERK', 2400, 122, 50),
(136, 'Hazel', 'Philtanker', NULL, '06-FEB-08'::date, 'ST_CLERK', 2200, 122, 50),
(137, 'Renske', 'Ladwig', NULL, '14-JUL-03'::date, 'ST_CLERK', 3600, 123, 50),
(138, 'Stephen', 'Stiles', NULL, '26-OCT-05'::date, 'ST_CLERK', 3200, 123, 50),
(139, 'John', 'Seo', NULL, '12-FEB-06'::date, 'ST_CLERK', 2700, 123, 50),
(140, 'Joshua', 'Patel', NULL, '06-APR-06'::date, 'ST_CLERK', 2500, 123, 50),
(141, 'Trenna', 'Rajs', NULL, '17-OCT-03'::date, 'ST_CLERK', 3500, 124, 50),
(142, 'Curtis', 'Davies', NULL, '29-JAN-05'::date, 'ST_CLERK', 3100, 124, 50),
(143, 'Randall', 'Matos', NULL, '15-MAR-06'::date, 'ST_CLERK', 2600, 124, 50),
(144, 'Peter', 'Vargas', NULL, '09-JUL-06'::date, 'ST_CLERK', 2500, 124, 50),
(145, 'John', 'Russell', NULL, '01-OCT-04'::date, 'SA_MAN', 14000, 100, 80),
(146, 'Karen', 'Partners', NULL, '05-JAN-05'::date, 'SA_MAN', 13500, 100, 80),
(147, 'Alberto', 'Errazuriz', NULL, '10-MAR-05'::date, 'SA_MAN', 12000, 100, 80),
(148, 'Gerald', 'Cambrault', NULL, '15-OCT-07'::date, 'SA_MAN', 11000, 100, 80),
(149, 'Eleni', 'Zlotkey', NULL, '29-JAN-08'::date, 'SA_MAN', 10500, 100, 80);


Create table if not exists departments (department_id NUMERIC, DEPARTMENT_NAME VARCHAR(20), MANAGER_ID NUMERIC, LOCATION_ID NUMERIC);

insert into departments values
(10, 'Administration', 200, 1700),
(20, 'Marketing', 201, 1800),
(30, 'Purchasing', 114, 1700),
(40, 'Human Resources', 203, 2400),
(50, 'Shipping', 121, 1500),
(60, 'IT', 103, 1400),
(70, 'Public Relations', 204, 2700),
(80, 'Sales', 145, 2500),
(90, 'Executive', 100, 1700),
(100, 'Finance', 108, 1700),
(110, 'Accounting', 205, 1700),
(120, 'Treasury', NULL, 1700),
(130, 'Corporate Tax', NULL, 1700),
(140, 'Control And Credit', NULL, 1700),
(150, 'Shareholder Services', NULL, 1700),
(160, 'Benefits', NULL, 1700),
(170, 'Manufacturing', NULL, 1700),
(180, 'Construction', NULL, 1700),
(190, 'Contracting', NULL, 1700),
(200, 'Operations', NULL, 1700),
(210, 'IT Support', NULL, 1700),
(220, 'NOC', NULL, 1700),
(230, 'IT Helpdesk', NULL, 1700),
(240, 'Government Sales', NULL, 1700),
(250, 'Retail Sales', NULL, 1700),
(260, 'Recruiting', NULL, 1700),
(270, 'Payroll', NULL, 1700);

create table COUNTRIES (COUNTRY_ID varchar(2), COUNTRY_NAME varchar(25), REGION_ID NUMERIC);

insert into countries values ('AR', 'Argentina', 2),
('AU', 'Australia', 3),
('BE', 'Belgium', 1),
('BR', 'Brazil', 2),
('CA', 'Canada', 2),
('CH', 'Switzerland', 1),
('CN', 'China', 3),
('DE', 'Germany', 1),
('DK', 'Denmark', 1),
('EG', 'Egypt', 4),
('FR', 'France', 1),
('IL', 'Israel', 4),
('IN', 'India', 3),
('IT', 'Italy', 1),
('JP', 'Japan', 3),
('KW', 'Kuwait', 4),
('ML', 'Malaysia', 3),
('MX', 'Mexico', 2),
('NG', 'Nigeria', 4),
('NL', 'Netherlands', 1),
('SG', 'Singapore', 3),
('UK', 'United Kingdom', 1),
('US', 'United States of America', 2),
('ZM', 'Zambia', 4),
('ZW', 'Zimbabwe', 4);

Create table if not exists DUAL (DUMMY varchar(1)); -- создание
insert into DUAL values ('X'); -- вставка данных
select * from DUAL; -- проверка