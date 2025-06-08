/********************************************/
-- AUTO RELEASE: qa-20250610
-- DIFF: qa-20250609 -> qa-20250610
/********************************************/

----------------------------------------------
-- SECTION: MIGRATIONS (changes/)
----------------------------------------------
----------------------------------------------
-- SECTION: SCHEMA (FULL if first release)
----------------------------------------------
-- NEW OBJECT: schema/procedures/add_emp_rating.sql

CREATE OR REPLACE PROCEDURE ADD_EMPLOYEE_RATING (
    p_employee_id IN EMPLOYEES.EMPLOYEE_ID%TYPE,
    p_rating IN NUMBER
) AS
BEGIN
    -- Update the employee's rating
    UPDATE EMPLOYEES
    SET RATING = p_rating
    WHERE EMPLOYEE_ID = p_employee_id;

    -- Check if the update was successful
    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Employee ID not found.');
    END IF;

    -- Commit the transaction
    COMMIT;
END;
/



-- MODIFIED OBJECTS (schema/) AS COMMENTS
-- MODIFIED OBJECT: schema/tables/emp.sql
-- BEGIN DIFF --------------------------------
-- diff --git a/schema/tables/emp.sql b/schema/tables/emp.sql
-- index d0d5235..44d6da4 100644
-- --- a/schema/tables/emp.sql
-- +++ b/schema/tables/emp.sql
-- @@ -1,2 +1,2 @@
--  -- create
-- -CREATE TABLE emp (id INT PRIMARY KEY, name VARCHAR(50), salary NUMBER, eq_id NUMBER);
-- +CREATE TABLE emp (id INT PRIMARY KEY, name VARCHAR(50), salary NUMBER, eq_id NUMBER, rating NUMBER);
-- END DIFF ----------------------------------



