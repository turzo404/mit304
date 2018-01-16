DECLARE
	v_employee_id NUMBER := &input_employee_id;
	v_first_name VARCHAR(20);
	v_last_name VARCHAR(25);

BEGIN
	SELECT first_name, last_name
	INTO v_first_name, v_last_name
	FROM employees
	WHERE employee_id = v_employee_id;
	
	DBMS_OUTPUT.PUT_LINE
	('Student Name: ' || v_first_name ||' '|| v_last_name);

EXCEPTION
	WHEN NO_DATA_FOUND THEN
		DBMS_OUTPUT.PUT_LINE
		('No Employee with ID ' || v_employee_id || ' found');

END;

/