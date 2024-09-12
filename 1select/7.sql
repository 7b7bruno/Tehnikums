-- outer join

-- orders + customers

-- use sql_store;

-- inner join
-- select * from orders o
-- join customers c
-- using(customer_id)

-- left outer join
-- select * from orders o
-- left join customers c
-- using(customer_id)


-- right outer join
-- select * from orders o
-- right join customers c
-- using(customer_id)

use sql_store;
select * from orders o
right join products p
on p.product_id = o.order_id