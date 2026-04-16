create database warehouse_system;
use warehouse_system;
CREATE TABLE Suppliers (
    supplier_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone BIGINT UNIQUE,
    city VARCHAR(50) DEFAULT 'India');
    desc Suppliers;
    INSERT INTO Suppliers VALUES (1, 'ABC Traders', 'abc@ail.com', 9876543211, 'India');
 select * from Suppliers;
 16:23:00	INSERT INTO Suppliers VALUES (1, 'ABC Traders', 'abc@ail.com', 9876543211, 'India')	Error Code: 1062. Duplicate entry '1' for key 'suppliers.PRIMARY'	0.000 sec
 
 CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10,2) CHECK (price > 0),
    stock INT CHECK (stock >= 0),
    status VARCHAR(20) DEFAULT 'Available');
    desc Products;
INSERT INTO Products VALUES (101, 'Keyboard', 'Electronics', 500, -50, 'Available');
select * from Products;
16:27:56	INSERT INTO Products VALUES (101, 'Keyboard', 'Electronics', 500, -50, 'Available')	Error Code: 3819. Check constraint 'products_chk_2' is violated.	0.000 sec

CREATE TABLE Warehouses (
    warehouse_id INT PRIMARY KEY,
    location VARCHAR(100),
    capacity INT CHECK (capacity > 0),
    manager VARCHAR(100),
    status VARCHAR(20) DEFAULT 'Active');
desc Warehouses;
INSERT INTO Warehouses VALUES (201, 'Bangalore', -1000, 'Manager A', 'Active');
select * from Warehouses;
16:31:22	INSERT INTO Warehouses VALUES (201, 'Bangalore', -1000, 'Manager A', 'Active')	Error Code: 3819. Check constraint 'warehouses_chk_1' is violated.	0.000 sec

CREATE TABLE Stock_Entries (
    entry_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    quantity INT CHECK (quantity > 0),
    entry_date DATE,
    type VARCHAR(20) CHECK (type IN ('IN','OUT')));
    desc Stock_Entries;
    INSERT INTO Stock_Entries VALUES (301, 'Keyboard', 20, '2026-04-10', 'out');
    select * from Stock_Entries;
    16:35:17	INSERT INTO Stock_Entries VALUES (301, 'Keyboard', 20, '2026-04-10', 'out')	Error Code: 1062. Duplicate entry '301' for key 'stock_entries.PRIMARY'	0.000 sec

CREATE TABLE Shipments (
    shipment_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    quantity INT CHECK (quantity > 0),
    shipment_date DATE,
    status VARCHAR(20) DEFAULT 'Pending');
    desc Shipments;
    INSERT INTO Shipments VALUES (401, 'Keyboard', -10, '2026-04-12', 'Shipped');
    select * from Shipments;
    16:38:06	INSERT INTO Shipments VALUES (401, 'Keyboard', -10, '2026-04-12', 'Shipped')	Error Code: 3819. Check constraint 'shipments_chk_1' is violated.	0.000 sec
