-- function

create or replace function get_sal
	(
		p_id employees.employee_id%type
	)
	return number is
	v_sal employees.salary%type := 0;

begin

	select salary
	into v_sal
	from employees
	where employee_id = p_id;
	return v_sal;

end get_sal;
/

declare
	e_id number := &employee_id;

begin

	dbms_output.put_line( 'salary of ' || e_id || ' is: ' || get_sal(e_id));

end;
/