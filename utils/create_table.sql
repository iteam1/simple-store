BEGIN;

-- Define tables

CREATE TABLE IF NOT EXISTS DimLocation(
    location_id INTEGER PRIMARY KEY,
    address VARCHAR(200) NOT NULL
);

CREATE TABLE IF NOT EXISTS DimEmployee(
    employee_id INTEGER PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    gender VARCHAR(2) NOT NULL,
    birthdate DATE NOT NULL,
    address VARCHAR(200) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    role VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS DimCustomer(
    customer_id INTEGER PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    gender VARCHAR(2),
    birthdate DATE,
    address VARCHAR(200),
    email VARCHAR(100),
    phone VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS DimCategory(
    category_id INTEGER PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS DimProduct(
    product_id INTEGER PRIMARY KEY,
    product_name VARCHAR(200) NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    category_id INTEGER NOT NULL,
    manufacturer VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS FactImport(
    import_id SERIAL PRIMARY KEY,
    employee_id INTEGER NOT NULL,
    location_id INTEGER NOT NULL,
    date_import DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS FactSales(
    sale_id SERIAL PRIMARY KEY,
    employee_id INTEGER NOT NULL,
    location_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    date_sale DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS DimDetailImport(
    detail_import_id SERIAL PRIMARY KEY,
    import_id SERIAL NOT NULL,
    product_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS DimDetailSale(
    detail_sale_id SERIAL PRIMARY KEY,
    sale_id SERIAL NOT NULL,
    product_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL
);

-- Add relationships

ALTER TABLE FactImport
ADD CONSTRAINT employee_import_fkey
FOREIGN KEY (employee_id) REFERENCES DimEmployee(employee_id)
ON UPDATE CASCADE
ON DELETE SET NULL;

ALTER TABLE FactImport
ADD CONSTRAINT location_import_fkey
FOREIGN KEY (location_id) REFERENCES DimLocation(location_id)
ON UPDATE CASCADE
ON DELETE SET NULL;

ALTER TABLE FactSales
ADD CONSTRAINT employee_sale_fkey
FOREIGN KEY (employee_id) REFERENCES DimEmployee(employee_id)
ON UPDATE CASCADE
ON DELETE SET NULL;

ALTER TABLE FactSales
ADD CONSTRAINT location_sale_fkey
FOREIGN KEY (location_id) REFERENCES DimLocation(location_id)
ON UPDATE CASCADE
ON DELETE SET NULL;

ALTER TABLE FactSales
ADD CONSTRAINT customer_sale_fkey
FOREIGN KEY (customer_id) REFERENCES DimCustomer(customer_id)
ON UPDATE CASCADE
ON DELETE SET NULL;

ALTER TABLE DimDetailImport
ADD CONSTRAINT import_fkey
FOREIGN KEY (import_id) REFERENCES FactImport(import_id)
ON UPDATE CASCADE
ON DELETE SET NULL;

ALTER TABLE DimDetailImport
ADD CONSTRAINT product_import_fkey
FOREIGN KEY (product_id) REFERENCES DimProduct(product_id)
ON UPDATE CASCADE
ON DELETE SET NULL;

ALTER TABLE DimDetailSale
ADD CONSTRAINT sale_fkey
FOREIGN KEY (sale_id) REFERENCES FactSales(sale_id)
ON UPDATE CASCADE
ON DELETE SET NULL;

ALTER TABLE DimDetailSale
ADD CONSTRAINT product_sale_fkey
FOREIGN KEY (product_id) REFERENCES DimProduct(product_id)
ON UPDATE CASCADE
ON DELETE SET NULL;

ALTER TABLE DimProduct
ADD CONSTRAINT category_fkey
FOREIGN KEY (category_id) REFERENCES DimCategory(category_id)
ON UPDATE CASCADE
ON DELETE SET NULL;

END;




