CREATE TABLE employees(
    employee_id	INT PRIMARY KEY,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	title VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	notes VARCHAR NOT NULL
);

CREATE TABLE customers(
    customer_id	VARCHAR PRIMARY KEY,
	company_name VARCHAR NOT NULL,
	contact_name VARCHAR NOT NULL
);

CREATE TABLE orders(
    order_id INT NOT NULL,
	customer_id	VARCHAR NOT NULL,
	employee_id	INT NOT NULL,
	order_date DATE NOT NULL,
	ship_city VARCHAR NOT NULL,
	FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
	FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);