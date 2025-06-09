/********************************************/
-- AUTO RELEASE: prod-20250609
-- DIFF: prod-20250608 -> prod-20250609
/********************************************/

----------------------------------------------
-- SECTION: MIGRATIONS (changes/)
----------------------------------------------
----------------------------------------------
-- SECTION: SCHEMA (FULL if first release)
----------------------------------------------
-- MODIFIED OBJECTS (schema/) AS COMMENTS
-- MODIFIED OBJECT: schema/tables/emp.sql
-- BEGIN DIFF --------------------------------
-- diff --git a/schema/tables/emp.sql b/schema/tables/emp.sql
-- index 8625f04..1bdcc26 100644
-- --- a/schema/tables/emp.sql
-- +++ b/schema/tables/emp.sql
-- @@ -1,2 +1,2 @@
--  -- create
-- -CREATE TABLE emp (id INT PRIMARY KEY, name VARCHAR(50), salary NUMBER, eq_id NUMBER, rating NUMBER, mail VARCHAR2(50));
-- +CREATE TABLE emp (id INT PRIMARY KEY, name VARCHAR(50), salary NUMBER, eq_id NUMBER, rating NUMBER, mail VARCHAR2(50), phone NUMBER);
-- END DIFF ----------------------------------



