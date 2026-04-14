-- database: :memory:
create database comp;
use comp;
CREATE TABLE Employee_Details (
emp_id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
gender CHAR(1),
salary DECIMAL(10,2),
is_active BOOLEAN,
joining_date DATE,
login_time TIME,
last_login DATETIME,
phone BIGINT,
address TEXT);
INSERT INTO Employee_Details VALUES
(101, 'Ravi Kumar', 30, 'M', 50000.75, TRUE, '2022-05-10', '09:30:00', '2026-04-10 09:30:00', 9876543210, 'Bangalore'),
(102, 'Sneha R', 28, 'F', 62000.50, TRUE, '2021-03-15', '10:00:00', '2026-04-11 10:00:00', 9123456789, 'Chennai');
select * from Employee_Details;

CREATE TABLE Departments (
    dept_id INT,
    dept_name VARCHAR(50),
    manager VARCHAR(50),
    location VARCHAR(50),
    budget DOUBLE,
    employees INT,
    phone VARCHAR(15),
    email VARCHAR(100),
    established_year INT,
    status VARCHAR(20)
);

INSERT INTO Departments VALUES
(1,'HR','Amit','Delhi',100000,10,'8001','hr@gmail.com',2010,'Active'),
(2,'IT','Sneha','Mumbai',200000,20,'8002','it@gmail.com',2012,'Active'),
(3,'Finance','Raj','Pune',150000,15,'8003','fin@gmail.com',2011,'Active');
select * from Departments;

CREATE TABLE Projects (
    project_id INT,
    name VARCHAR(50),
    client VARCHAR(50),
    budget DOUBLE,
    start_date DATE,
    end_date DATE,
    manager VARCHAR(50),
    team_size INT,
    status VARCHAR(20),
    location VARCHAR(50)
);

INSERT INTO Projects VALUES
(1,'App Dev','ABC',50000,'2025-01-01','2025-06-01','Sneha',5,'Ongoing','Remote'),
(2,'Web Dev','XYZ',40000,'2025-02-01','2025-07-01','Amit',4,'Ongoing','Delhi'),
(3,'Audit','DEF',30000,'2025-03-01','2025-08-01','Raj',3,'Planned','Pune');

CREATE TABLE Attendance (
    id INT,
    emp_id INT,
    date DATE,
    status VARCHAR(10),
    check_in TIME,
    check_out TIME,
    working_hours INT,
    overtime INT,
    remarks VARCHAR(50),
    location VARCHAR(50)
);

INSERT INTO Attendance VALUES
(1,1,'2025-04-01','Present','09:00','18:00',8,1,'Good','Office'),
(2,2,'2025-04-01','Present','09:30','18:30',8,0,'Good','Office'),
(3,3,'2025-04-01','Absent',NULL,NULL,0,0,'Leave','Home');

CREATE TABLE Payroll (
    id INT,
    emp_id INT,
    basic DOUBLE,
    bonus DOUBLE,
    deductions DOUBLE,
    net_salary DOUBLE,
    month VARCHAR(20),
    year INT,
    payment_date DATE,
    status VARCHAR(20)
);

INSERT INTO Payroll VALUES
(1,1,40000,5000,2000,43000,'April',2025,'2025-04-30','Paid'),
(2,2,50000,6000,3000,53000,'April',2025,'2025-04-30','Paid'),
(3,3,60000,7000,4000,63000,'April',2025,'2025-04-30','Paid');
select * from Payroll;