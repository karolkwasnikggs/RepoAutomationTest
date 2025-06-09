/********************************************/
-- AUTO RELEASE: qa-20250612
-- PREFIX: qa
-- BASE: qa-20250611
/********************************************/
----------------------------------------------
-- SECTION: MIGRATIONS (changes/)
----------------------------------------------
----------------------------------------------
-- SECTION: SCHEMA CHANGES
----------------------------------------------
-- MODIFIED OBJECTS (AS COMMENTS)
-- MODIFIED: schema/tables/emp.sql
-- BEGIN DIFF
-- diff --git a/schema/tables/emp.sql b/schema/tables/emp.sql
-- index 8625f04..1bdcc26 100644
-- --- a/schema/tables/emp.sql
-- +++ b/schema/tables/emp.sql
-- @@ -1,2 +1,2 @@
--  -- create
-- -CREATE TABLE emp (id INT PRIMARY KEY, name VARCHAR(50), salary NUMBER, eq_id NUMBER, rating NUMBER, mail VARCHAR2(50));
-- +CREATE TABLE emp (id INT PRIMARY KEY, name VARCHAR(50), salary NUMBER, eq_id NUMBER, rating NUMBER, mail VARCHAR2(50), phone NUMBER);
-- END DIFF



