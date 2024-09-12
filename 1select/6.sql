use sql_hr;
select
	e.employee_id as "Employee id",
    e.first_name as "Employee name",
    e.last_name as "Employee last name",
    e.reports_to as "Manager id"
from employees e
join employees m
	on e.reports_to = m.employee_id;
    