-- use sql_store;
-- SELECT 
--     o.customer_id,
--     o.order_id,
--     o.shipped_date,
--     c.first_name,
--     c.last_name,
--     s.name, 
--     st.name
-- FROM
--     orders o
--         INNER JOIN
--     customers c USING (customer_id)
--         INNER JOIN
--     shippers s USING (shipper_id)
-- 		RIGHT JOIN
-- 	order_statuses st ON o.status = st.order_status_id

use sql_hr;
SELECT 
    a.employee_id,
    a.first_name,
    b.first_name AS boss,
    a.last_name,
    a.job_title,
    a.salary,
    a.reports_to,
    a.office_id
FROM
    employees a,
    employees b
WHERE
    a.reports_to = b.employee_id
