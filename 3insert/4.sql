use sql_store;

insert into orders
	(customer_id, order_date, status)
values (11, "2019-01-01", 3);

select * from orders;

select last_insert_id();