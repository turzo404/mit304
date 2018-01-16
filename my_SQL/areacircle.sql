-- named procedure -- area of circle

create or replace procedure area_circle
(
	res in out number
)
is


begin

	res := 3.1416 * res * res;

end area_circle;
/

declare
	res number;

begin
	res := 5;
	area_circle(res);
	dbms_output.put_line(res);
end;
/
