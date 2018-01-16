-- function area of circle

create or replace function get_areaC
	(
		rad number
	)
	return number is
		c_area number := 0;

begin

	c_area := 3.14 * rad *rad;
	return c_area;

end get_areaC;
/

declare
	i_rad number := &radius;

begin

	dbms_output.put_line( 'area of circle  is ' || get_areaC(i_rad));

end;
/