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
