/********************************************/
-- AUTO RELEASE: qa-20250611
-- DIFF: qa-20250610 -> qa-20250611
/********************************************/

----------------------------------------------
-- SECTION: MIGRATIONS (changes/)
----------------------------------------------
-- FILE: changes/20250608_emp_add_mail.sql

ALTER TABLE emp ADD COLUMN mail VARCHAR2(50);



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



-- MODIFIED OBJECTS (schema/) AS COMMENTS
-- MODIFIED OBJECT: schema/tables/emp.sql
-- BEGIN DIFF --------------------------------
-- diff --git a/schema/tables/emp.sql b/schema/tables/emp.sql
-- index 44d6da4..8625f04 100644
-- --- a/schema/tables/emp.sql
-- +++ b/schema/tables/emp.sql
-- @@ -1,2 +1,2 @@
--  -- create
-- -CREATE TABLE emp (id INT PRIMARY KEY, name VARCHAR(50), salary NUMBER, eq_id NUMBER, rating NUMBER);
-- +CREATE TABLE emp (id INT PRIMARY KEY, name VARCHAR(50), salary NUMBER, eq_id NUMBER, rating NUMBER, mail VARCHAR2(50));
-- END DIFF ----------------------------------



