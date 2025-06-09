/********************************************/
-- AUTO RELEASE: prod-20250615
/********************************************/

----------------------------------------------
-- SECTION: MIGRATIONS (from QA releases)
----------------------------------------------
-- FILE: changes/test2.sql
SELECT 1 from dual;



----------------------------------------------
-- SECTION: SCHEMA (from QA releases)
----------------------------------------------
-- OBJECT: schema/procedures/add_emp_rating.sql
CREATE OR REPLACE PROCEDURE ADD_EMPLOYEE_RATING (
    p_employee_id IN EMPLOYEES.EMPLOYEE_ID%TYPE,
    p_rating IN NUMBER
) AS
BEGIN
    -- Update the employee's rating
    UPDATE EMPLOYEES
    SET RATING = p_rating
    -- Check if the update was successful
    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Employee ID not found.');
    END IF;

    -- Commit the transaction
    COMMIT;
END;
/



