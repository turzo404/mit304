-- insert into table using procedure
create or replace procedure add_person
	(
		p_id in myTab.s_id%type,
		p_name in myTab.name%type,
		p_phone in myTab.phone%type,
		p_prof in myTab.profession%type
	)
is
begin
	insert into myTab
		(
			s_id, name, phone, profession
		)
	values
		(
			p_id, p_name, p_phone, p_prof
		);

end add_person;
/

declare
	p_id int := 1;
	p_name varchar2(20):= 'Jasim';
	p_phone int := 1234;
	p_prof varchar2(20):= 'CR';

begin

	add_person(p_id, p_name, p_phone, p_prof);

end;
/