/********************************************/
-- AUTO RELEASE: prepreprod-20240607
-- FIRST RELEASE for environment: prepreprod
/********************************************/

----------------------------------------------
-- SECTION: MIGRATIONS (changes/)
----------------------------------------------
-- FILE: changes/20240607_add_col_eq_to_emp.sql

ALTER TABLE EMP ADD COLUMN eq_id NUMBER;



-- FILE: changes/20240607_users_add_mail.sql

ALTER TABLE users ADD COLUMN mail VARCHAR(20);



-- FILE: changes/20240607_users_add_sale_id.sql

ALTER TABLE users ADD COLUMN sale_id VARCHAR(20);



-- FILE: changes/20240607_users_add_age.sql

ALTER TABLE users ADD COLUMN age NUMBER;



-- FILE: changes/20240607_users_add_status.sql

ALTER TABLE users ADD COLUMN status VARCHAR(20);



-- FILE: changes/20240607_add_col_salary_to_emp.sql

ALTER TABLE EMP ADD COLUMN salary NUMBER;



-- FILE: changes/20240607_users_add_department_id.sql

ALTER TABLE users ADD COLUMN department_id NUMBER;



----------------------------------------------
-- SECTION: SCHEMA (FULL if first release)
----------------------------------------------
-- SCHEMA OBJECT: schema/tables/eq.sql
-- create
CREATE TABLE eq (id INT PRIMARY KEY, name VARCHAR(50));



-- SCHEMA OBJECT: schema/tables/users.sql
-- create
CREATE TABLE users (id INT PRIMARY KEY, name VARCHAR(50), sale_id VARCHAR(50));



-- SCHEMA OBJECT: schema/tables/emp.sql
-- create
CREATE TABLE emp (id INT PRIMARY KEY, name VARCHAR(50), salary NUMBER, eq_id NUMBER);



-- SCHEMA OBJECT: schema/tables/sales.sql
-- create
CREATE TABLE sales (id INT PRIMARY KEY, name VARCHAR(50));



-- SCHEMA OBJECT: schema/tables/departments.sql
-- create
CREATE TABLE departments (id INT PRIMARY KEY, name VARCHAR(50));



