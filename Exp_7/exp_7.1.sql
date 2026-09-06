CREATE TABLE Staff (
    ID INT PRIMARY KEY,
    NAME VARCHAR(50),
    SALARY DECIMAL(10,2)
);

INSERT INTO Staff VALUES (1, 'Rahul', 50000);
INSERT INTO Staff VALUES (2, 'Aman', 75000);
INSERT INTO Staff VALUES (3, 'Priya', 60000);
INSERT INTO Staff VALUES (4, 'Rohan', 90000);
INSERT INTO Staff VALUES (5, 'Neha', 80000);
INSERT INTO Staff VALUES (6, 'Karan', 65000);
INSERT INTO Staff VALUES (7, 'Simran', 70000);

DO $$
DECLARE
    emp_cursor CURSOR FOR
        SELECT name, salary
        FROM staff
        ORDER BY salary DESC
        LIMIT 5;

    emp RECORD;
BEGIN
    OPEN emp_cursor;

    LOOP
        FETCH emp_cursor INTO emp;
        EXIT WHEN NOT FOUND;

        RAISE NOTICE 'Name: %, Salary: %', emp.name, emp.salary;
    END LOOP;

    CLOSE emp_cursor;
END $$;