-- named procedure

create or replace procedure format_phone
(
	p_phone_no in out varchar2
	--p_phone_after out varchar2
)
is

begin

	p_phone_no := 	'(' || substr(p_phone_no, 1, 3) ||
					')' || substr(p_phone_no, 4, 3) ||
					'-' || substr(p_phone_no, 7);

end format_phone;
/

