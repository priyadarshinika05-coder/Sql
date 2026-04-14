create database BankDB;
use BankDB;
CREATE TABLE Customers (
    customer_id INT,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    phone VARCHAR(15),
    email VARCHAR(100),
    address VARCHAR(100),
    account_no VARCHAR(20),
    balance DOUBLE,
    created_date DATE
);

INSERT INTO Customers VALUES
(1,'Ravi',30,'M','9001','ravi@gmail.com','Chennai','ACC1',50000,'2020-01-01'),
(2,'Sita',28,'F','9002','sita@gmail.com','Madurai','ACC2',60000,'2021-01-01'),
(3,'Kumar',35,'M','9003','kumar@gmail.com','Salem','ACC3',70000,'2019-01-01');
select * from Customers;

CREATE TABLE Accounts (
    account_id INT,
    customer_id INT,
    type VARCHAR(20),
    balance DOUBLE,
    status VARCHAR(20),
    branch VARCHAR(50),
    IFSC VARCHAR(20),
    open_date DATE,
    interest_rate DOUBLE,
    nominee VARCHAR(50)
);

INSERT INTO Accounts VALUES
(1,1,'Savings',50000,'Active','Chennai','IFSC1','2020-01-01',4.5,'Priya'),
(2,2,'Current',60000,'Active','Madurai','IFSC2','2021-01-01',3.5,'Ravi'),
(3,3,'Savings',70000,'Active','Salem','IFSC3','2019-01-01',4.0,'Sita');
show tables;

CREATE TABLE Transactions (
    txn_id INT,
    account_id INT,
    type VARCHAR(20),
    amount DOUBLE,
    date DATE,
    time TIME,
    status VARCHAR(20),
    mode VARCHAR(20),
    remarks VARCHAR(50),
    balance DOUBLE
);

INSERT INTO Transactions VALUES
(1,1,'Deposit',10000,'2025-04-01','10:00','Success','Cash','OK',60000),
(2,2,'Withdraw',5000,'2025-04-01','11:00','Success','ATM','OK',55000),
(3,3,'Transfer',7000,'2025-04-01','12:00','Pending','Online','Check',63000);

CREATE TABLE Loans (
    loan_id INT,
    customer_id INT,
    amount DOUBLE,
    interest DOUBLE,
    tenure INT,
    EMI DOUBLE,
    start_date DATE,
    end_date DATE,
    status VARCHAR(20),
    type VARCHAR(20)
);

INSERT INTO Loans VALUES
(1,1,100000,8.5,12,9000,'2025-01-01','2026-01-01','Active','Personal'),
(2,2,200000,9.0,24,9500,'2025-02-01','2027-02-01','Active','Home'),
(3,3,150000,8.0,18,8500,'2025-03-01','2026-09-01','Pending','Car');

CREATE TABLE Branches (
    branch_id INT,
    name VARCHAR(50),
    location VARCHAR(50),
    manager VARCHAR(50),
    phone VARCHAR(15),
    email VARCHAR(100),
    IFSC VARCHAR(20),
    employees INT,
    established_year INT,
    status VARCHAR(20)
);

INSERT INTO Branches VALUES
(1,'Main','Chennai','Raj','8001','main@gmail.com','IFSC1',50,2000,'Active'),
(2,'City','Madurai','Kumar','8002','city@gmail.com','IFSC2',30,2005,'Active'),
(3,'Town','Salem','Ravi','8003','town@gmail.com','IFSC3',20,2010,'Active');