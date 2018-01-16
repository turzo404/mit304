-- if else
declare
	--v_num1 NUMBER := 5;
	--v_num2 NUMBER := 3;
	--v_num3 number := 10;
	--v_temp NUMBER;
	/*
	v_num1 NUMBER := &number_1;
	v_num2 NUMBER := &number_2;
	v_num3 number := &number_3;
		
	v_max number;

	*/
	
	v_counter number := 0;
	
begin
	/*
	v_max := v_num1;
	
	if v_max < v_num2
	then
		v_max := v_num2;
		elsif v_num1 < v_num3
		then
			v_max := v_num3;
	end if;
	
	if v_max < v_num3
	then
		v_max := v_num3;
	end if;
	
		DBMS_OUTPUT.PUT_LINE('maximum = '||v_max);
	*/
	
	loop
		dbms_output.put_line('counter = '|| v_counter);
		v_counter := v_counter + 1;
		exit when v_counter < 11;
	end loop;
	
end;
/