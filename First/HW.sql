-- Table

INSERT INTO employees_hw(full_name,email,age,department,salary,hired_at,fired_at)
VALUES
('Dan Ivanov', 'dan.ivanov@mail.com', 19, 'IT', 650000, '2023-01-10', NULL),
('Anna Petrova', 'anna.petrova@mail.com', 18, 'HR', 620000, '2023-02-15', NULL),
('Andrey Smirnov', 'andrey.smirnov@mail.com', 22, 'Sales', 700000, '2022-11-01', NULL),
('Ivan Sidorov', 'ivan.sidorov@mail.com', 25, 'Marketing', 450000, '2021-05-20', NULL),
('Roman Kuznetsov', 'roman.k@mail.com', 30, 'IT', 800000, '2020-03-12', NULL),

('Elena Volkova', 'elena.v@mail.com', 17, 'HR', 300000, '2024-01-05', NULL),
('Maxim Orlov', 'max.orlov@mail.com', 28, 'Sales', 500000, '2022-08-18', '2024-06-01'),
('Svetlana Morozova', 'sveta.m@mail.com', 35, 'Marketing', 550000, '2019-09-10', '2023-12-31'),
('Artem Lebedev', 'artem.l@mail.com', 19, 'IT', 400000, '2023-06-01', NULL),
('Natalia Fedorova', 'natalia.f@mail.com', 41, 'HR', 600000, '2018-04-22', '2022-10-10'),

('Kirill Pavlov', 'kirill.p@mail.com', 26, 'Sales', 480000, '2021-07-07', NULL),
('Daniil Romanov', 'daniil.r@mail.com', 20, 'Marketing', 520000, '2023-09-01', NULL),
('Olga Belova', 'olga.b@mail.com', 33, 'HR', 580000, '2020-02-14', NULL),
('Stanislav Egorov', 'stan.eg@mail.com', 29, 'IT', 610000, '2022-12-01', NULL),
('Pavel Denisov', 'pavel.d@mail.com', 38, 'Sales', 430000, '2019-11-11', NULL);

-- SELECT + WHERE
SELECT * FROM employees_hw WHERE fired_at IS NOT NULL;
SELECT * FROM employees_hw WHERE salary >= 600000;
SELECT * FROM employees_hw WHERE age < 20;
SELECT * FROM employees_hw WHERE full_name ILIKE '%an%';


SELECT * FROM employees_hw WHERE salary > 500000
SELECT * FROM employees_hw WHERE age >= 18

SELECT * FROM employees_hw WHERE department = 'IT'
SELECT * FROM employees_hw WHERE department != 'IT'
SELECT * FROM employees_hw WHERE id = 11
SELECT * FROM employees_hw WHERE department = 'IT' AND salary >= 600000
SELECT * FROM employees_hw WHERE department = 'HR' OR department = 'Marketing'
SELECT * FROM employees_hw WHERE age < 20  OR salary > 700000
SELECT * FROM employees_hw WHERE department = 'Sales' AND (age < 25 OR salary > 500000);
SELECT * FROM employees_hw WHERE age BETWEEN 20 AND 30
SELECT * FROM employees_hw WHERE salary BETWEEN 300000 AND 600000
SELECT * FROM employees_hw WHERE fired_at IS NULL
SELECT * FROM employees_hw WHERE fired_at IS NOT NULL

--LIKE / ILIKE
SELECT * FROM employees_hw WHERE full_name ILIKE '%an%';
SELECT * FROM employees_hw WHERE full_name LIKE '%A%';
SELECT * FROM employees_hw WHERE email ILIKE '%corp%' OR email ILIKE '%gmail%';
SELECT * FROM employees_hw WHERE department ILIKE '%s%'

--ORDER BY / LIMIT
SELECT * FROM employees_hw ORDER BY salary DESC 
SELECT * FROM employees_hw ORDER BY salary DESC LIMIT 5
SELECT * FROM employees_hw ORDER BY age ASC LIMIT 3
SELECT * FROM employees_hw ORDER BY created_at DESC LIMIT 5
SELECT * FROM employees_hw ORDER BY department ASC,full_name ASC

--UPDATE
UPDATE employees_hw
SET salary = salary * 1.10
WHERE department = 'IT'

UPDATE employees_hw
SET salary = salary * 0.95
WHERE department = 'Sales'

UPDATE employees_hw
SET department = 'IT'
WHERE email = 'max.orlov@mail.com'

UPDATE employees_hw
SET full_name = 'Andrew'
WHERE id = 14

UPDATE employees_hw
SET fired_at = CURRENT_DATE
WHERE id = 4

UPDATE employees_hw
SET salary = salary + 50000
WHERE age < 18

--DELETE

DELETE FROM employees_hw
WHERE id = 4

DELETE FROM employees_hw
WHERE salary < 200000

DELETE FROM employees_hw
WHERE fired_at IS NOT NULL


--Final
SELECT COUNT(*) FROM employees_hw --11
SELECT MIN(salary) FROM employees_hw --350000
SELECT MAX(salary) FROM employees_hw --880000
SELECT * FROM employees_hw ORDER BY id ASC 

1	"Dan Ivanov"	"dan.ivanov@mail.com"	19	"IT"	715000	"2023-01-10"		"2026-01-20 23:22:41.844103+05"
2	"Anna Petrova"	"anna.petrova@mail.com"	18	"HR"	620000	"2023-02-15"		"2026-01-20 23:22:41.844103+05"
3	"Andrey Smirnov"	"andrey.smirnov@mail.com"	22	"Sales"	700000	"2022-11-01"		"2026-01-20 23:22:41.844103+05"
5	"Roman Kuznetsov"	"roman.k@mail.com"	30	"IT"	880000	"2020-03-12"		"2026-01-20 23:22:41.844103+05"
6	"Elena Volkova"	"elena.v@mail.com"	17	"HR"	350000	"2024-01-05"		"2026-01-20 23:22:41.844103+05"
9	"Artem Lebedev"	"artem.l@mail.com"	19	"IT"	440000	"2023-06-01"		"2026-01-20 23:22:41.844103+05"
11	"Kirill Pavlov"	"kirill.p@mail.com"	26	"Sales"	480000	"2021-07-07"		"2026-01-20 23:22:41.844103+05"
12	"Daniil Romanov"	"daniil.r@mail.com"	20	"Marketing"	520000	"2023-09-01"		"2026-01-20 23:22:41.844103+05"
13	"Olga Belova"	"olga.b@mail.com"	33	"HR"	580000	"2020-02-14"		"2026-01-20 23:22:41.844103+05"
14	"Andrew"	"stan.eg@mail.com"	29	"IT"	671000	"2022-12-01"		"2026-01-20 23:22:41.844103+05"
15	"Pavel Denisov"	"pavel.d@mail.com"	38	"Sales"	430000	"2019-11-11"		"2026-01-20 23:22:41.844103+05"