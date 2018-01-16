declare
	cursor c_zip
	is
	select * 
	from employees;
	vr_zip c_zip%rowtype;

begin
	open c_zip;

	loop
		fetch c_zip into vr_zip;
		exit when c_zip%notfound;
		dbms_output.put_line(vr_zip.last_name || '    ' || vr_zip.salary || '    ' || (vr_zip.salary + 500));
	end loop;

end;
/