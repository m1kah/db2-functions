-- Can only be used in procedure, compiled function or compound statement

select empno,projno from empprojact order by empno limit 10;

create type project_number_list as char(6) array[];

create procedure get_employee_projects
    (in empno_in char(6),
     out project_numbers project_number_list)
begin
    select array_agg(projno order by projno asc) into project_numbers
    from empprojact ep
    where empno = empno_in;
end;

select * from empprojact where empno='000010';
select * from empprojact where empno='000230';

-- db2 commands
-- call get_employee_projects('000010', ?)
-- call get_employee_projects('000230', ?)
