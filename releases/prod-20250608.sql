/********************************************/
-- AUTO RELEASE: prod-20250608
-- DIFF: prod-20240610 -> prod-20250608
/********************************************/

----------------------------------------------
-- SECTION: MIGRATIONS (changes/)
----------------------------------------------
-- FILE: changes/20250608_emp_add_mail.sql

ALTER TABLE emp ADD COLUMN mail VARCHAR2(50);



-- FILE: changes/20250608_emp_add_rating.sql

ALTER TABLE emp ADD COLUMN rating NUMBER;



-- FILE: changes/20250608_sales_add_amount.sql

ALTER TABLE sales ADD COLUMN amount NUMBER;



----------------------------------------------
-- SECTION: SCHEMA (FULL if first release)
----------------------------------------------
-- NEW OBJECT: schema/functions/send_mail.sql

BEGIN
   UTL_MAIL.SEND(
      sender    => 'hr@yourcompany.com',
      recipients => 'employee@example.com',
      subject   => 'Welcome to the Company!',
      message   => 'Dear Employee, welcome to our organization. Please let us know if you have any questions.'
   );
END;
/



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
-- MODIFIED OBJECT: schema/tables/emp.sql
-- BEGIN DIFF --------------------------------
-- diff --git a/schema/tables/emp.sql b/schema/tables/emp.sql
-- index d0d5235..8625f04 100644
-- --- a/schema/tables/emp.sql
-- +++ b/schema/tables/emp.sql
-- @@ -1,2 +1,2 @@
--  -- create
-- -CREATE TABLE emp (id INT PRIMARY KEY, name VARCHAR(50), salary NUMBER, eq_id NUMBER);
-- +CREATE TABLE emp (id INT PRIMARY KEY, name VARCHAR(50), salary NUMBER, eq_id NUMBER, rating NUMBER, mail VARCHAR2(50));
-- END DIFF ----------------------------------



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



