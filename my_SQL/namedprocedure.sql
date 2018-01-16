-- named procedure

create or replace procedure raise_salary(p_id in employees.employee_id%TYPE, p_percent in number)
is
begin
	update employees	
	set salary = salary * (1 + p_percent/100)
	where employee_id = p_id;
end raise_salary;
/