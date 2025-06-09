/********************************************/
-- AUTO RELEASE: qa-20250623
/********************************************/

----------------------------------------------
-- SECTION: MIGRATIONS (changes/)
----------------------------------------------
-- FILE: changes/test2.sql

SELECT 1 from dual;



----------------------------------------------
-- SECTION: SCHEMA (FULL if first release)
----------------------------------------------
-- MODIFIED OBJECTS (schema/) AS COMMENTS
-- MODIFIED OBJECT: schema/procedures/add_emp_rating.sql
-- BEGIN DIFF --------------------------------
-- diff --git a/schema/procedures/add_emp_rating.sql b/schema/procedures/add_emp_rating.sql
-- index 22601dd..f5f1871 100644
-- --- a/schema/procedures/add_emp_rating.sql
-- +++ b/schema/procedures/add_emp_rating.sql
-- @@ -6,8 +6,6 @@ BEGIN
--      -- Update the employee's rating
--      UPDATE EMPLOYEES
--      SET RATING = p_rating
-- -    WHERE EMPLOYEE_ID = p_employee_id;
-- -
--      -- Check if the update was successful
--      IF SQL%ROWCOUNT = 0 THEN
--          RAISE_APPLICATION_ERROR(-20001, 'Employee ID not found.');
-- END DIFF ----------------------------------



