/********************************************/
-- AUTO RELEASE: prod-20240610
-- DIFF: prod-20240609 -> prod-20240610
/********************************************/

----------------------------------------------
-- SECTION: MIGRATIONS (changes/)
----------------------------------------------
-- FILE: changes/20240607_add_col_eq_to_emp.sql

ALTER TABLE EMP ADD COLUMN eq_id NUMBER;



-- FILE: changes/20240607_add_col_salary_to_emp.sql

ALTER TABLE EMP ADD COLUMN salary NUMBER;



----------------------------------------------
-- SECTION: NEW OBJECTS (schema/)
----------------------------------------------
-- NEW OBJECT: schema/tables/emp.sql

-- create
CREATE TABLE emp (id INT PRIMARY KEY, name VARCHAR(50), salary NUMBER, eq_id NUMBER);



-- NEW OBJECT: schema/tables/eq.sql

-- create
CREATE TABLE eq (id INT PRIMARY KEY, name VARCHAR(50));



----------------------------------------------
-- SECTION: MODIFIED OBJECTS (schema/) AS COMMENTS
----------------------------------------------
