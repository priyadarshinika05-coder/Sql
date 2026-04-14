create database Hospital;
use Hospital;
CREATE TABLE Patients (
    patient_id INT,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    disease VARCHAR(50),
    doctor VARCHAR(50),
    admission_date DATE,
    discharge_date DATE,
    phone VARCHAR(15),
    address VARCHAR(100)
);

INSERT INTO Patients VALUES
(1,'Ramesh',45,'M','Fever','Dr.A','2025-04-01',NULL,'9001','Chennai'),
(2,'Sita',30,'F','Cold','Dr.B','2025-04-02',NULL,'9002','Madurai'),
(3,'John',50,'M','Diabetes','Dr.C','2025-04-03',NULL,'9003','Coimbatore');
select * from Patients;

CREATE TABLE Doctors (
    doctor_id INT,
    name VARCHAR(50),
    specialization VARCHAR(50),
    experience INT,
    salary DOUBLE,
    phone VARCHAR(15),
    email VARCHAR(100),
    department VARCHAR(50),
    joining_date DATE,
    status VARCHAR(20)
);

INSERT INTO Doctors VALUES
(1,'Dr.A','General',10,80000,'8001','a@gmail.com','OPD','2015-01-01','Active'),
(2,'Dr.B','ENT',8,70000,'8002','b@gmail.com','ENT','2017-01-01','Active'),
(3,'Dr.C','Diabetes',12,90000,'8003','c@gmail.com','Special','2013-01-01','Active');
show tables;

CREATE TABLE Appointments (
    id INT,
    patient_id INT,
    doctor_id INT,
    date DATE,
    time TIME,
    status VARCHAR(20),
    fees DOUBLE,
    room VARCHAR(10),
    remarks VARCHAR(50),
    created_at DATE
);

INSERT INTO Appointments VALUES
(1,1,1,'2025-04-01','10:00','Done',500,'101','OK','2025-04-01'),
(2,2,2,'2025-04-02','11:00','Done',400,'102','OK','2025-04-02'),
(3,3,3,'2025-04-03','12:00','Pending',600,'103','Check','2025-04-03');

CREATE TABLE Billing (
    bill_id INT,
    patient_id INT,
    amount DOUBLE,
    tax DOUBLE,
    discount DOUBLE,
    total DOUBLE,
    payment_mode VARCHAR(20),
    date DATE,
    status VARCHAR(20),
    remarks VARCHAR(50)
);

INSERT INTO Billing VALUES
(1,1,1000,100,50,1050,'Cash','2025-04-01','Paid','OK'),
(2,2,800,80,40,840,'Card','2025-04-02','Paid','OK'),
(3,3,1200,120,60,1260,'UPI','2025-04-03','Pending','Check');

CREATE TABLE Rooms (
    room_id INT,
    type VARCHAR(50),
    floor INT,
    capacity INT,
    occupied INT,
    price DOUBLE,
    status VARCHAR(20),
    patient_id INT,
    nurse VARCHAR(50),
    remarks VARCHAR(50)
);

INSERT INTO Rooms VALUES
(1,'General',1,4,2,500,'Available',1,'Nurse1','OK'),
(2,'Private',2,1,1,1000,'Full',2,'Nurse2','OK'),
(3,'ICU',3,1,1,2000,'Full',3,'Nurse3','Critical');