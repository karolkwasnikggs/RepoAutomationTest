/********************************************/
-- AUTO RELEASE: qa-20240615
-- DIFF: qa-20240614 -> qa-20240615
/********************************************/

----------------------------------------------
-- SECTION: MIGRATIONS (changes/)
----------------------------------------------
-- FILE: changes/20240607_add_col_eq_to_emp.sql

ALTER TABLE EMP ADD COLUMN eq_id NUMBER;



----------------------------------------------
-- SECTION: NEW OBJECTS (schema/)
----------------------------------------------
-- NEW OBJECT: schema/tables/eq.sql

-- create
CREATE TABLE eq (id INT PRIMARY KEY, name VARCHAR(50));



----------------------------------------------
-- SECTION: MODIFIED OBJECTS (schema/) AS COMMENTS
----------------------------------------------
-- MODIFIED OBJECT: schema/tables/emp.sql
-- BEGIN DIFF --------------------------------
-- diff --git a/schema/tables/emp.sql b/schema/tables/emp.sql
-- index 6df5559..d0d5235 100644
-- --- a/schema/tables/emp.sql
-- +++ b/schema/tables/emp.sql
-- @@ -1,2 +1,2 @@
--  -- create
-- -CREATE TABLE emp (id INT PRIMARY KEY, name VARCHAR(50), salary NUMBER);
-- +CREATE TABLE emp (id INT PRIMARY KEY, name VARCHAR(50), salary NUMBER, eq_id NUMBER);
-- END DIFF ----------------------------------



