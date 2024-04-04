create table Priyadharshini.Employeedetails (
Id int identity(1,1) primary key,
Name varchar(20),
Gender varchar(20),
DOB datetime,
Deptid int
)
set Identity_Insert Priyadharshini.Employeedetails ON;
insert into  Priyadharshini.Employeedetails (Id ,Name,Gender,DOB,Deptid)
values ('1','Pranaya' ,'Male','1996-02-29 10:53:27.060','1'),
       ( '2','Priyanka','Female','1995-05-25 10:53:27.060','2'),
	   ('3','Anurag' ,'Male','1995-04-19 10:53:27.060','3'),
	   ('4','Preety' ,'Female','1996-03-17 10:53:27.060','4'),
	   ('5','Sambit' ,'Male','1997-1-15  10:53:27.060','5'),
	   ('6','Hina' ,'Female','1995-07-12 10:53:27.060','6')
select *from  Priyadharshini.Employeedetails

create view Priyadharshini.employee
AS 
select Id,Name,Gender,DOB,Deptid 
from Priyadharshini.Employeedetails

select Name,Gender,DOB from Priyadharshini.employee

Create function getemp(@name varchar(20))      
returns table       
as      
return
(select * from  Priyadharshini.Employeedetails where Name=@name) 

select*from getemp('Hina')

create view Priyadharshini.EmployeesDetailsVw AS
select *,
CASE When gender='Male' then 'His DOB Is'+ CONVERT(nvarchar(20),DOB,120)
     When gender='Female' then 'Her DOB Is'+ CONVERT(nvarchar(20),DOB,120)
	 End as Message
	 From Priyadharshini.Employeedetails;

	 select *from Priyadharshini.EmployeesDetailsVw
