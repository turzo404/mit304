-- cursor 1
declare 
	vr_employee employees%rowtype;
	e_id employees.employee_id%type := &employee_id;

begin 
	select *
	into vr_employee
	from employees
	where employee_id = e_id;

	dbms_output.put_line(vr_employee.last_name || ' ' || vr_employee.salary);

--	update employees
--		set first_name='T'
--		where first_name like 'T%';
--		dbms_output.put_line(sql%rowcount);
end;
/