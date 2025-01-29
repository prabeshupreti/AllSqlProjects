
CREATE DATABASE Office;

USE Office;

CREATE TABLE Department
(
	Id int PRIMARY KEY,
	Name varchar(25) NOT NULL
);

exec sp_columns "Department";

exec sp_help "Department";

SELECT * FROM Department;

INSERT INTO Department(Id, Name)
					VALUES(1, 'Academic');

INSERT INTO Department(Id, Name)
					VALUES(2, 'Account');

INSERT INTO Department(Id, Name)
					VALUES(3, 'IT');

INSERT INTO Department(Id, Name)
					VALUES(4, 'Student Service');

SELECT Id, Name AS 'Department Name' FROM Department;

CREATE TABLE Employee
(
	Id int Primary Key Identity(1, 1),
	Name varchar(25) NOT NULL,
	Contact varchar(10) NOT NULL,
	Address varchar(75) NOT NULL
);

SELECT * FROM Employee;

INSERT INTO Employee(Name, Contact, Address)
VALUES('Prabesh Upreti', '9827279897', '44200, Kalanki Kathmandu');

INSERT INTO Employee(Name, Contact, Address)
VALUES('Bisakha Poudel', '9827279897', '44200, Gokarna');

DROP TABLE Employee;

DROP TABLE Department;

USE master;

DROP DATABASE Office; 

DELETE FROM Employee;

TRUNCATE TABLE Employee;