create database accounts;
use accounts;
CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    account_holder VARCHAR(50),
    balance DECIMAL(12,2),
    account_type VARCHAR(20),
    branch VARCHAR(50),
    city VARCHAR(50),
    open_date DATE,
    last_transaction DATE,
    status VARCHAR(20));
    desc accounts;
    
    INSERT INTO accounts VALUES
(101, 'Ravi Kumar', 50000, 'Savings', 'SBI', 'Chennai', '2020-01-10', '2024-01-05', 'Active'),
(102, 'Priya Sharma', 120000, 'Current', 'HDFC', 'Mumbai', '2019-03-15', '2024-02-10', 'Active'),
(103, 'Amit Singh', 30000, 'Savings', 'ICICI', 'Delhi', '2021-07-20', NULL, 'Inactive'),
(104, 'Sneha Reddy', 75000, 'Savings', 'SBI', 'Hyderabad', '2018-11-25', '2023-12-30', 'Active'),
(105, 'Kiran Patel', 20000, 'Current', 'Axis', 'Ahmedabad', '2022-05-12', NULL, 'Inactive'),
(106, 'Meena Das', 95000, 'Savings', 'HDFC', 'Kolkata', '2020-09-01', '2024-03-01', 'Active'),
(107, 'Arjun Nair', 40000, 'Savings', 'ICICI', 'Bangalore', '2021-06-30', NULL, 'Inactive'),
(108, 'Divya Iyer', 150000, 'Current', 'SBI', 'Chennai', '2017-08-18', '2024-02-20', 'Active');
select * from accounts;

SELECT * FROM accounts WHERE balance > 50000;
SELECT * FROM accounts WHERE balance < 80000;
SELECT * FROM accounts WHERE balance <= 40000;
SELECT * FROM accounts WHERE balance >= 100000;
SELECT * FROM accounts WHERE status != 'Active';

SELECT * FROM accounts WHERE balance > 50000 AND account_type = 'Savings';
SELECT * FROM accounts WHERE city = 'Chennai' OR city = 'Mumbai';
SELECT * FROM accounts WHERE NOT status = 'Active';
SELECT * FROM accounts WHERE balance > 30000 AND branch = 'ICICI';
SELECT * FROM accounts WHERE balance < 50000 OR account_type = 'Current';

SELECT * FROM accounts WHERE branch IN ('SBI', 'HDFC');
SELECT * FROM accounts WHERE account_type IN ('Savings', 'Current');
SELECT * FROM accounts WHERE city IN ('Chennai', 'Delhi');
SELECT * FROM accounts WHERE branch NOT IN ('Axis');
SELECT * FROM accounts WHERE status NOT IN ('Inactive');

SELECT * FROM accounts WHERE last_transaction IS NULL;
SELECT * FROM accounts WHERE last_transaction IS NOT NULL;
SELECT * FROM accounts WHERE open_date IS NOT NULL;
SELECT * FROM accounts WHERE balance IS NOT NULL;
SELECT * FROM accounts WHERE last_transaction IS NULL AND status = 'Inactive';

SELECT * FROM accounts WHERE account_holder LIKE 'A%';
SELECT * FROM accounts WHERE account_holder LIKE '%a';
SELECT * FROM accounts WHERE branch LIKE '%B%';
SELECT * FROM accounts WHERE account_holder NOT LIKE 'R%';
SELECT * FROM accounts WHERE city NOT LIKE '%Chennai%';

SELECT * FROM accounts WHERE balance BETWEEN 30000 AND 100000;
SELECT * FROM accounts WHERE open_date BETWEEN '2019-01-01' AND '2022-12-31';
SELECT * FROM accounts WHERE balance BETWEEN 40000 AND 150000;
SELECT * FROM accounts WHERE balance NOT BETWEEN 20000 AND 80000;
SELECT * FROM accounts WHERE open_date NOT BETWEEN '2020-01-01' AND '2023-01-01';