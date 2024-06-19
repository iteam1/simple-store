BEGIN;

-- Insert data table DimLocation

INSERT INTO DimLocation (location_id, address)
VALUES
(1, '123 Main St, Springfield, IL 62701'),
(2, '456 Elm St, Chicago, IL 60605'),
(3, '789 Oak St, Naperville, IL 60540'),
(4, '101 Maple St, Evanston, IL 60201'),
(5, '202 Pine St, Peoria, IL 61602');

-- Insert data table DimEmployee

INSERT INTO dimcustomer (customer_id, first_name, last_name) VALUES
	(0,'unknown','unknown');

INSERT INTO DimEmployee (employee_id, first_name, last_name, gender, birthdate, address, email, phone, role) VALUES
(1, 'John', 'Doe', 'M', '1980-01-15', '123 Main St, Springfield, IL 62701', 'john.doe@example.com', '555-1234', 'CEO'),
(2, 'Jane', 'Smith', 'F', '1985-02-20', '456 Elm St, Chicago, IL 60605', 'jane.smith@email.com', '555-5678', 'Manager'),
(3, 'Emily', 'Davis', 'F', '1979-03-25', '789 Oak St, Naperville, IL 60540', 'emily.davis@gmail.com', '555-8765', 'Manager'),
(4, 'Michael', 'Johnson', 'M', '1982-04-30', '101 Maple St, Evanston, IL 60201', 'michael.johnson@email.com', '555-4321', 'Manager'),
(5, 'Chris', 'Brown', 'M', '1990-05-10', '202 Pine St, Peoria, IL 61602', 'chris.brown@example.com', '555-9876', 'Seller'),
(6, 'Jessica', 'Wilson', 'F', '1991-06-15', '303 Birch St, Aurora, IL 60502', 'jessica.wilson@example.com', '555-6543', 'Seller'),
(7, 'Daniel', 'Martinez', 'M', '1992-07-20', '404 Cedar St, Joliet, IL 60431', 'daniel.martinez@gmail.com', '555-3210', 'Seller'),
(8, 'Laura', 'Taylor', 'F', '1987-08-25', '505 Walnut St, Rockford, IL 61107', 'laura.taylor@example.com', '555-1235', 'Seller'),
(9, 'Robert', 'Anderson', 'M', '1989-09-30', '606 Chestnut St, Naperville, IL 60540', 'robert.anderson@example.com', '555-5679', 'Seller'),
(10, 'Linda', 'Thomas', 'F', '1986-10-05', '707 Redwood St, Champaign, IL 61820', 'linda.thomas@example.com', '555-8766', 'Seller'),
(11, 'James', 'Hernandez', 'M', '1993-11-10', '808 Willow St, Bloomington, IL 61701', 'james.hernandez@example.com', '555-4322', 'Seller'),
(12, 'Patricia', 'Moore', 'F', '1988-12-15', '909 Ash St, Decatur, IL 62521', 'patricia.moore@example.com', '555-9877', 'Seller'),
(13, 'Kevin', 'Jackson', 'M', '1994-01-20', '1010 Poplar St, Cicero, IL 60804', 'kevin.jackson@example.com', '555-6544', 'Seller'),
(14, 'Angela', 'White', 'F', '1995-02-25', '1111 Spruce St, Waukegan, IL 60085', 'angela.white@example.com', '555-3211', 'Seller'),
(15, 'Matthew', 'Harris', 'M', '1983-03-30', '1212 Beech St, Skokie, IL 60077', 'matthew.harris@example.com', '555-1236', 'Seller'),
(16, 'Barbara', 'Martin', 'F', '1990-04-05', '1313 Pine St, Elgin, IL 60120', 'barbara.martin@gmail.com', '555-5670', 'Seller'),
(17, 'Richard', 'Garcia', 'M', '1981-05-10', '1414 Fir St, Evanston, IL 60201', 'richard.garcia@example.com', '555-8761', 'Seller'),
(18, 'Susan', 'Martinez', 'F', '1984-06-15', '1515 Maple St, Schaumburg, IL 60193', 'susan.martinez@gmail.com', '555-4323', 'Seller'),
(19, 'Charles', 'Rodriguez', 'M', '1986-07-20', '1616 Oak St, Aurora, IL 60502', 'charles.rodriguez@email.com', '555-9878', 'Seller'),
(20, 'Mary', 'Lewis', 'F', '1987-08-25', '1717 Birch St, Joliet, IL 60431', 'mary.lewis@example.com', '555-6545', 'Seller'),
(21, 'David', 'Clark', 'M', '1985-09-30', '1818 Cedar St, Rockford, IL 61107', 'david.clark@hotmail.com', '555-3212', 'Accountant'),
(22, 'Karen', 'Walker', 'F', '1988-10-05', '1919 Walnut St, Naperville, IL 60540', 'karen.walker@hotmail.com', '555-1237', 'Accountant'),
(23, 'Joseph', 'Hall', 'M', '1992-11-10', '2020 Chestnut St, Champaign, IL 61820', 'joseph.hall@gmail.com', '555-5671', 'Accountant'),
(24, 'Nancy', 'Allen', 'F', '1989-12-15', '2121 Redwood St, Bloomington, IL 61701', 'nancy.allen@hotmail.com', '555-8762', 'Staff'),
(25, 'Paul', 'Young', 'M', '1991-01-20', '2222 Willow St, Decatur, IL 62521', 'paul.young@hotmail.com', '555-4324', 'Staff'),
(26, 'Lisa', 'King', 'F', '1986-02-25', '2323 Ash St, Cicero, IL 60804', 'lisa.king@example.com', '555-9879', 'Staff'),
(27, 'Steven', 'Wright', 'M', '1984-03-30', '2424 Poplar St, Waukegan, IL 60085', 'steven.wright@hotmail.com', '555-6546', 'Staff'),
(28, 'Betty', 'Lopez', 'F', '1990-04-05', '2525 Spruce St, Skokie, IL 60077', 'betty.lopez@example.com', '555-3213', 'Staff'),
(29, 'George', 'Hill', 'M', '1985-05-10', '2626 Beech St, Elgin, IL 60120', 'george.hill@example.com', '555-1238', 'Staff'),
(30, 'Dorothy', 'Scott', 'F', '1987-06-15', '2727 Pine St, Evanston, IL 60201', 'dorothy.scott@gmail.com', '555-5672', 'Staff'),
(31, 'Thomas', 'Green', 'M', '1989-07-20', '2828 Fir St, Schaumburg, IL 60193', 'thomas.green@example.com', '555-8763', 'Staff'),
(32, 'Sandra', 'Adams', 'F', '1988-08-25', '2929 Maple St, Aurora, IL 60502', 'sandra.adams@gmail.com', '555-4325', 'Staff'),
(33, 'Donald', 'Baker', 'M', '1992-09-30', '3030 Oak St, Joliet, IL 60431', 'donald.baker@example.com', '555-9870', 'Staff'),
(34, 'Ashley', 'Gonzalez', 'F', '1994-10-05', '3131 Birch St, Rockford, IL 61107', 'ashley.gonzalez@example.com', '555-6547', 'Staff'),
(35, 'Mark', 'Nelson', 'M', '1993-11-10', '3232 Cedar St, Naperville, IL 60540', 'mark.nelson@email.com', '555-3214', 'Staff');

-- Insert data table DimCategory

INSERT INTO DimCategory (category_id, category_name) VALUES
(1,'Smartphones and Tablets'),
(2,'Laptops and PCs'),
(3,'Smart Home Devices'),
(4,'Wearable Technology'),
(5,'Home Entertainment Systems');

-- Insert data table DimProduct

INSERT INTO DimProduct (product_id, product_name, unit_price, category_id, manufacturer)
VALUES
    -- Smartphones and Tablets
    (1, 'iPhone 13 Pro Max', 1099.00, 1, 'Apple'),
    (2, 'Samsung Galaxy S22 Ultra', 1199.99, 1, 'Samsung'),
    (3, 'Google Pixel 6 Pro', 899.00, 1, 'Google'),
    (4, 'Samsung Galaxy Tab S8+', 899.99, 1, 'Samsung'),
    (5, 'OnePlus 9 Pro', 899.00, 1, 'OnePlus'),
    
    -- Laptops and PCs
    (6, 'MacBook Pro 16-inch', 2399.00, 2, 'Apple'),
    (7, 'Dell XPS 15', 1499.99, 2, 'Dell'),
    (8, 'HP Spectre x360', 1299.99, 2, 'HP'),
    (9, 'Microsoft Surface Laptop 4', 1299.99, 2, 'Microsoft'),
    (10, 'ASUS ROG Zephyrus G14', 1499.99, 2, 'ASUS'),
    
    -- Smart Home Devices
    (11, 'Amazon Echo (4th Gen)', 99.99, 3, 'Amazon'),
    (12, 'Google Nest Thermostat', 249.00, 3, 'Google'),
    (13, 'Philips Hue Starter Kit', 199.99, 3, 'Philips'),
    (14, 'Ring Video Doorbell Pro 2', 249.99, 3, 'Ring'),
    (15, 'Nest Cam Outdoor', 199.00, 3, 'Google'),
    
    -- Wearable Technology
    (16, 'Apple Watch Series 7', 399.00, 4, 'Apple'),
    (17, 'Fitbit Charge 5', 179.95, 4, 'Fitbit'),
    (18, 'Garmin Fenix 7X Sapphire', 799.99, 4, 'Garmin'),
    (19, 'Samsung Galaxy Watch 4', 349.99, 4, 'Samsung'),
    (20, 'Oura Ring Gen 3', 299.00, 4, 'Oura'),
    
    -- Home Entertainment Systems
    (21, 'Sony 65" OLED TV', 2499.99, 5, 'Sony'),
    (22, 'Samsung QLED 75" TV', 3299.99, 5, 'Samsung'),
    (23, 'Bose Soundbar 700', 799.00, 5, 'Bose'),
    (24, 'Sony PlayStation 5', 499.99, 5, 'Sony'),
    (25, 'Nintendo Switch OLED', 349.99, 5, 'Nintendo'),
    
    -- Additional products to make up 30 rows
    (26, 'Microsoft Xbox Series X', 499.99, 5, 'Microsoft'),
    (27, 'LG Gram 14" Laptop', 1199.99, 2, 'LG'),
    (28, 'GoPro Hero 10 Black', 499.99, 1, 'GoPro'),
    (29, 'Apple MacBook Air', 999.00, 2, 'Apple'),
    (30, 'Roku Ultra Streaming Player', 99.99, 5, 'Roku'),

    -- Smartphones and Tablets
    (31, 'Google Pixel 5a', 449.00, 1, 'Google'),
    (32, 'OnePlus 9', 729.00, 1, 'OnePlus'),
    (33, 'iPhone SE (2022)', 429.00, 1, 'Apple'),
    (34, 'Samsung Galaxy Tab A7', 199.99, 1, 'Samsung'),
    (35, 'Xiaomi Mi 11 Lite', 349.00, 1, 'Xiaomi'),
    
    -- Laptops and PCs
    (36, 'Lenovo ThinkPad X1 Carbon', 1599.99, 2, 'Lenovo'),
    (37, 'Acer Predator Helios 300', 1299.99, 2, 'Acer'),
    (38, 'Microsoft Surface Pro 7', 799.00, 2, 'Microsoft'),
    (39, 'ASUS VivoBook 15', 599.99, 2, 'ASUS'),
    (40, 'HP Envy 13', 999.99, 2, 'HP'),
    
    -- Smart Home Devices
    (41, 'Amazon Echo Dot (4th Gen)', 49.99, 3, 'Amazon'),
    (42, 'Google Nest Mini', 49.00, 3, 'Google'),
    (43, 'Wyze Cam v3', 34.99, 3, 'Wyze'),
    (44, 'August Wi-Fi Smart Lock', 249.00, 3, 'August'),
    (45, 'Ecobee SmartThermostat', 249.00, 3, 'Ecobee'),
    
    -- Wearable Technology
    (46, 'Samsung Galaxy Watch Active 2', 249.99, 4, 'Samsung'),
    (47, 'Apple Watch SE', 279.00, 4, 'Apple'),
    (48, 'Fitbit Versa 2', 179.95, 4, 'Fitbit'),
    (49, 'Garmin Forerunner 945', 599.99, 4, 'Garmin'),
    (50, 'Amazfit GTR 3', 199.99, 4, 'Amazfit'),
    
    -- Home Entertainment Systems
    (51, 'LG OLED CX 55" TV', 1799.99, 5, 'LG'),
    (52, 'Vizio 65" 4K Smart TV', 699.99, 5, 'Vizio'),
    (53, 'Sonos Arc Soundbar', 799.00, 5, 'Sonos'),
    (54, 'PlayStation 5 Digital Edition', 399.99, 5, 'Sony'),
    (55, 'Xbox Series S', 299.99, 5, 'Microsoft'),
    
    -- Additional products to make up 30 rows
    (56, 'Lenovo Legion 5 Gaming Laptop', 1299.99, 2, 'Lenovo'),
    (57, 'Google Pixel 4a', 349.00, 1, 'Google'),
    (58, 'Bose QuietComfort 45 Headphones', 329.00, 5, 'Bose'),
    (59, 'Apple iPad Air (2022)', 599.00, 1, 'Apple'),
    (60, 'Ring Alarm Security System', 199.00, 3, 'Ring');

END;