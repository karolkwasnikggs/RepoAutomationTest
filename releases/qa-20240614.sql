/********************************************/
-- AUTO RELEASE: qa-20240614
-- DIFF: qa-20240613 -> qa-20240614
/********************************************/

----------------------------------------------
-- SECTION: MIGRATIONS (changes/)
----------------------------------------------
-- FILE: changes/20240607_add_col_salary_to_emp.sql

ALTER TABLE EMP ADD COLUMN salary NUMBER;



----------------------------------------------
-- SECTION: NEW OBJECTS (schema/)
----------------------------------------------
-- NEW OBJECT: schema/tables/emp.sql

-- create
CREATE TABLE emp (id INT PRIMARY KEY, name VARCHAR(50), salary NUMBER);



----------------------------------------------
-- SECTION: MODIFIED OBJECTS (schema/) AS COMMENTS
----------------------------------------------
