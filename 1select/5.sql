-- use sql_hr;
-- select * from employees

use sql_store;
-- select first_name from customers

-- use sql_hr;
-- select * from employees
-- where reports_to is null or reports_to = ''

-- SELECT 
--     *
-- FROM
--     orders
-- WHERE
--     status = 1

SELECT 
    o.order_id, c.customer_id, c.first_name, c.last_name
FROM
    orders o
        JOIN
    customers c ON o.customer_id = c.customer_id
    

