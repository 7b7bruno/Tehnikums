use sql_store;
update orders
set 
	status = default,
    comments = "Please double check",
    shipper_id = null
where order_id in (9,10,11);

select * from orders;