-- loop
declare
	
	v_counter number := 5;
	v_start number := &v_start;
	v_end number := &v_end;

begin
	
	--while v_counter <10
	for v_counter in v_start..v_end
	loop
		--v_counter := v_counter + 1;
		dbms_output.put_line('counter = '|| v_counter);
		--v_counter := v_counter + 1;
		--exit when v_counter = 10;
	end loop;
	
end;
/