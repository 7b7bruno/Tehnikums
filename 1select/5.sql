-- use sql_hr;
-- select * from employees

use sql_store;
-- select first_name from customers

-- use sql_hr;
-- select * from employees
-- where reports_to is null or reports_to = ''

SELECT 
    *
FROM
    orders
WHERE
    status = 1
