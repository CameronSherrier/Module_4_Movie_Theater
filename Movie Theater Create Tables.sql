create table customer (
	customer_id SERIAL primary key,
	first_name VARCHAR(150),
	last_name VARCHAR(150)
);

create table movies (
	movie_id SERIAL primary key,
	movie_name VARCHAR(150),
	rating CHAR(5)
);

create table tickets (
	ticket_id SERIAL primary key,
	prod_cost NUMERIC(3,2),
	movie_id INTEGER not null,
	customer_id INTEGER not null,
	foreign key(movie_id) references movies(movie_id),
	foreign key(customer_id) references customer(customer_id)
);

create table concessions (
	purchase_id SERIAL primary key,
	customer_id INTEGER not null,
	foreign key(customer_id) references customer(customer_id)
);

create table concession_order (
	order_id SERIAL primary key,
	order_date DATE default CURRENT_DATE,
	sub_total NUMERIC(3,2),
	total_cost NUMERIC(3,2),
	purchase_id INTEGER not null,
	foreign key(purchase_id) references concessions(purchase_id)
);

create table inventory (
	upc SERIAL primary key,
	product_quant INTEGER,
	order_id INTEGER not null,
	foreign key(order_id) references concession_order(order_id)
);