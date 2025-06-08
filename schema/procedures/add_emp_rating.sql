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
