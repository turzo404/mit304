create or replace procedure query_emp
( 	p_id in employees.employee_id%type, 
	p_name out employees.last_name%type,
	p_salary out employees.salary%type
)
is

begin 
	select last_name, salary*12 into p_name, p_salary
	from employees
	where employee_id = p_id;
end query_emp;
/

declare
	v_emp_name employees.last_name%type;
	v_emp_sal employees.salary%type;
	
begin
	query_emp(206, v_emp_name, v_emp_sal);
	
	--dbms_output.put_line(v_emp_name || ' earns ' || to_char(v_emp_sal, '$999,999.00') || ' per year.');
	dbms_output.put_line(v_emp_name || ' earns $' || v_emp_sal || '.00 per year.');
end;
/