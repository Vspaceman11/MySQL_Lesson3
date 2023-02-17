CREATE DATABASE HR_Department_DB;

USE HR_Department_DB;
DROP DATABASE HR_Department_DB;

CREATE TABLE employee
(
id int auto_increment NOT NULL,
FName varchar(40) NOT NULL,
Lname varchar(40) NOT NULL,
phone varchar(10) NOT NULL,
passport_number varchar(6) NOT NULL,
identification_number varchar(10) NOT NULL,
position varchar(30) NOT NULL,
salary double(10,2) NOT NULL,
date_of_employment date NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO employee
(FName, LName, phone, passport_number, identification_number, position, salary, date_of_employment)
VALUES
('Dave', 'Augystyno', '1234567890', '333666', '0387654321', 'Senior Engineer', 11000.00, '2018-09-11'),
('Jack', 'Kovalsky', '123453394', '123000', '0984654321', 'Middle Java Developer ', 5000.00, '2021-12-19'),
('Sam', 'Fisher', '111562190', '333223', '0987655321', 'Junior Java Developer', 1000.20, '2022-04-13'),
('Solid', 'Snake', '1434567620', '323166', '0987154321', 'Senior Engineer', 10000.00, '2019-09-03'),
('Marshall', 'Metters', '1231523840', '123466', '2987654321', 'Middle Java Developer', 6400.20, '2021-06-02');

SELECT * FROM employee;
DROP TABLE employee;

CREATE TABLE PersonalData
(
PersonsId int auto_increment NOT NULL,
FName varchar(40) NOT NULL,
LName varchar(40) NOT NULL,
Phone varchar(12) NOT NULL,
FamilyStatus varchar(30) NOT NULL,
Gender varchar(1) NOT NULL,
HireDate date NOT NULL,
PRIMARY KEY (PersonsId)
);

INSERT INTO PersonalData
(FName, LName, Phone, FamilyStatus, Gender, HireDate)
VALUES
('Dave', 'Augystyno', '1234567890', 'Divorsed', 'M','2018-09-11'),
('Jack', 'Kovalsky', '123453394', 'Married', 'M', '2021-12-19'),
('Sam', 'Fisher', '111562190', 'Single', 'F', '2022-04-13'),
('Solid', 'Snake', '1434567620', 'Married', 'M', '2019-09-03'),
('Marshall', 'Metters', '1231523840', 'Single', 'M', '2021-06-02');

CREATE TABLE PassportData
(
PassportId int auto_increment NOT NULL,
EmployeeId int NOT NULL,
PassportNumber varchar(6) NOT NULL,
IdentificationNumber varchar(10) NOT NULL,
PRIMARY KEY (PassportId),
FOREIGN KEY (EmployeeId) REFERENCES PersonalData(PersonsId)
);

INSERT INTO PassportData
(EmployeeId, PassportNumber, IdentificationNumber)
VALUES
(1, '333666', '0387654321'),
(2, '123000', '0984654321'),
(3, '333223', '0987655321'),
(4, '323166', '0987154321'),
(5, '123466', '2987654321');

CREATE TABLE SalaryData
(
PersonSalaryId int auto_increment NOT NULL,
PassportId int NOT NULL,
Position varchar(40) NOT NULL,
Salary float(10,2) NOT NULL,
PRIMARY KEY (PersonSalaryId),
FOREIGN KEY(PassportId) REFERENCES PassportData(PassportId)
);

INSERT INTO SalaryData
(PassportId, Position, Salary)
VALUES
(1, 'Senior Engineer', 11000.00),
(2, 'Middle Java Developer ', 5000.00),
(3, 'Junior Java Developer', 1000.20),
(4, 'Senior Engineer', 10000.00),
(5, 'Middle Java Developer', 6400.20);

SELECT * FROM PersonalData;
SELECT * FROM PassportData;
SELECT * FROM SalaryData;




