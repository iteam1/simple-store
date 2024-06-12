-- Create tables
CREATE TABLE IF NOT EXISTS DimProducts(
	product_id SERIAL,
	product_name VARCHAR(100) NOT NULL,
	unit_price NUMERIC(20,2) NOT NULL,
	category VARCHAR(50) NOT NULL
);

ALTER TABLE DimProducts ADD PRIMARY KEY (product_id);

CREATE TABLE IF NOT EXISTS DimCustomers(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	email VARCHAR(100) NOT NULL,
	birthday DATE
);

CREATE TABLE IF NOT EXISTS DimBills(
	bill_id SERIAL PRIMARY KEY,
	create_date DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS FactSales(
	sale_id SERIAL PRIMARY KEY,
	product_id INTEGER NOT NULL,
	customer_id INTEGER NOT NULL,
	unit INTEGER NOT NULL,
	bill_id INTEGER NOT NULL
);

-- Add relationships
ALTER TABLE FactSales
ADD CONSTRAINT product_fkey
FOREIGN KEY (product_id) REFERENCES DimProducts(product_id);

ALTER TABLE FactSales
ADD CONSTRAINT customer_fkey
FOREIGN KEY (customer_id) REFERENCES DimCustomers(customer_id);

ALTER TABLE FactSales
ADD CONSTRAINT bill_fkey
FOREIGN KEY (bill_id) REFERENCES DimBills(bill_id);