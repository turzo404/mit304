declare
	e_phone_no varchar2(20);

begin
	e_phone_no  := &phone_number;
	format_phone(e_phone_no);
	dbms_output.put_line(e_phone_no);

end;
/