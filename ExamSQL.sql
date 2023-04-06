create database EmployeeDB
go
use EmployeeDB
go
create table Department(
	DepartId int primary key,
	DepartName varchar(50) not null,
	Descript varchar(100) not null,
	)
go
create table Employee(
	EmpCode char(6) primary key,
	FirstName varchar(30) not null,
	LastName varchar(30) not null,
	Birthday bit,
	Address varchar(100),
	DepartID int,
	Salary money,
	foreign key (DepartID) references department (DepartId),
	)
go
alter table Employee
add gender bit;

ALTER TABLE Employee
ALTER COLUMN BirthDay smalldatetime;

select * from Employee
--> Cau 1<--
INSERT INTO Department VALUES (123, 'HoangHoaTham', 'Tang 10 Bo Phan Media')
INSERT INTO Department VALUES (124, 'CauGiay', 'Bo Phan Marketing')
INSERT INTO Department VALUES (125, 'MyDinh', 'Bo Phan sale')

INSERT INTO Employee VALUES (223, 'Nguyen', 'Thanh', '2003','So 10 Duong Viet Hung','123','1000','1')
INSERT INTO Employee VALUES (224, 'Nguyen', 'Hoang', '2002','So 230 Truong Trinh','124','1200','1')
INSERT INTO Employee VALUES (225, 'Nguyen', 'Toan', '2002','So 212 Truong Trinh','124','2200','1')
--> Cau 2<--
UPDATE Employee SET Salary = Salary + (Salary * 10/100);
--> Cau 3<--
ALTER TABLE Employee 
ADD CONSTRAINT Salary CHECK (salary > 0);

