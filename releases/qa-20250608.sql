/********************************************/
-- AUTO RELEASE: qa-20250608
-- DIFF: qa-20240615 -> qa-20250608
/********************************************/

----------------------------------------------
-- SECTION: MIGRATIONS (changes/)
----------------------------------------------
----------------------------------------------
-- SECTION: SCHEMA (FULL if first release)
----------------------------------------------
-- NEW OBJECT: schema/procedures/insert_emp.sql

CREATE OR REPLACE PROCEDURE insert_employee (
    p_emp_id    IN NUMBER,
    p_emp_name  IN VARCHAR2,
    p_emp_salary IN NUMBER
) AS
BEGIN
    INSERT INTO employees (emp_id, emp_name, emp_salary)
    VALUES (p_emp_id, p_emp_name, p_emp_salary);
    
    COMMIT;
END;
/



-- MODIFIED OBJECTS (schema/) AS COMMENTS
-- MODIFIED OBJECT: schema/tables/sales.sql
-- BEGIN DIFF --------------------------------
-- diff --git a/schema/tables/sales.sql b/schema/tables/sales.sql
-- index c217b20..1aa78fd 100644
-- --- a/schema/tables/sales.sql
-- +++ b/schema/tables/sales.sql
-- @@ -1,2 +1,2 @@
--  -- create
-- -CREATE TABLE sales (id INT PRIMARY KEY, name VARCHAR(50));
-- +CREATE TABLE sales (id INT PRIMARY KEY, name VARCHAR(50), amount NUMBER);
-- END DIFF ----------------------------------



