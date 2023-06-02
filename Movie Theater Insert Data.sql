insert into customer (
	customer_id,
	first_name,
	last_name
) values (
	1,
	'Cameron',
	'Sherrier'
);

insert into movies (
	movie_id,
	movie_name,
	rating
) values (
	1,
	'Shrek',
	'PG-13'
);

insert into tickets (
	ticket_id,
	prod_cost,
	movie_id,
	customer_id
) values (
	1,
	5.00,
	1,
	1
);

insert into concessions (
	purchase_id,
	customer_id
) values (
	1,
	1
);

insert into concession_order (
	order_id,
	order_date,
	sub_total,
	total_cost,
	purchase_id
) values (
	1,
	current_date,
	5.00,
	7.00,
	1
);

insert into inventory (
	upc,
	product_quant,
	order_id
) values (
	1,
	10,
	1
);

select * from concessions