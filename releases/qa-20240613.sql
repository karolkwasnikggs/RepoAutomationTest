-- auto release: qa-20240613

-- MIGRATIONS (changes/)
-- changes/20240607_users_add_department_id.sql
ALTER TABLE users ADD COLUMN department_id NUMBER;


-- changes/20240607_users_add_sale_id.sql
ALTER TABLE users ADD COLUMN sale_id VARCHAR(20);


-- NEW OBJECTS (schema/)
-- NEW: schema/tables/departments.sql
-- create
CREATE TABLE departments (id INT PRIMARY KEY, name VARCHAR(50));


-- NEW: schema/tables/sales.sql
-- create
CREATE TABLE sales (id INT PRIMARY KEY, name VARCHAR(50));


-- MODIFIED OBJECTS (schema/) [AS COMMENTS]
-- MODIFIED: schema/tables/users.sql
-- BEGIN DIFF
-- diff --git a/schema/tables/users.sql b/schema/tables/users.sql
-- index 3384285..4dafdb9 100644
-- --- a/schema/tables/users.sql
-- +++ b/schema/tables/users.sql
-- @@ -1,2 +1,2 @@
--  -- create
-- -CREATE TABLE users (id INT PRIMARY KEY, name VARCHAR(50));
-- +CREATE TABLE users (id INT PRIMARY KEY, name VARCHAR(50), sale_id VARCHAR(50));
-- END DIFF


