Create Database Employee_List

Create Table EmployeeDetails(Employee_ID INT,FirstName varchar(max),LastName varchar(max),Salary INT,JoiningDate Varchar(max),Department varchar(max),Gender varchar(max))

SELECT * FROM EmployeeDetails

Insert into EmployeeDetails
Values('1','Vikas','Ahlawat','600000','02/12/2023 11:16','IT','Male'),
 ('2','nikita','Jain','530000','02/14/2013 11:16','HR','Female'),
 ('3','Ashish','Kumar','1000000','02/14/2013 11:16 ','IT','Male'),
 ('4','Nikhil','Sharma','480000','02/15/2013 11:16','HR','Male'),
 ('5','anish','kadian','500000','02/16/2013  11:16','Payroll','Male')


 Drop table EmployeeDetails

-------1) Write a query to get all employee detail from "EmployeeDetail" table

SELECT * FROM EmployeeDetails

------2) Write a query to get only "FirstName" column from "EmployeeDetail" table

SELECT FirstName FROM EmployeeDetails

------3) Write a query to get FirstName in upper case as "First Name".

SELECT UPPER(FirstName) AS "First Name" FROM EmployeeDetails;

----4)  Write a query for combine FirstName and LastName and display it as "Name" (also include white space between first name & last name)

SELECT CONCAT(FirstName, ' ', LastName) AS Name FROM EmployeeDetails

---5) Select employee detail whose name is "Vikas

SELECT * FROM EmployeeDetails WHERE FirstName = 'Vikas';

---6)  Get all employee detail from EmployeeDetail table whose "FirstName" start with latter 'a'.

SELECT * FROM EmployeeDetails WHERE FirstName LIKE 'a%';

---7)  Get all employee details from EmployeeDetail table whose "FirstName" end with 'h'

SELECT * FROM EmployeeDetails WHERE FirstName LIKE '%h';

---8) Get all employee detail from EmployeeDetail table whose "FirstName" start with any single character between 'a-p'

SELECT * FROM EmployeeDetails WHERE FirstName LIKE '[a-p]%';

---9) Get all employee detail from EmployeeDetail table whose "Gender" end with 'le' and contain 4 letters. The Underscore(_) Wildcard Character represents any single character

SELECT * FROM EmployeeDetails WHERE Gender LIKE '__le' 

---- 10)  Get all employee detail from EmployeeDetail table whose "FirstName" start with 'A' and contain 5 letters

SELECT * FROM EmployeeDetails WHERE FirstName LIKE 'A____'

-----11) Get all employee detail from EmployeeDetail table whose "FirstName" containing '%'. ex:-"Vik%as".

SELECT * FROM EmployeeDetails WHERE FirstName LIKE '%[%]%'

---12)  Get all unique "Department" from EmployeeDetail table

SELECT DISTINCT Department FROM EmployeeDetails

---13 ) Get the highest "Salary" from EmployeeDetail table.

SELECT MAX(Salary) AS HighestSalary FROM EmployeeDetails
----14)  Get the lowest "Salary" from EmployeeDetail table

SELECT MIN(Salary) AS LowestSalary FROM EmployeeDetails

------15)  Show "JoiningDate" in "dd mmm yyyy" format, ex- "15 Feb 2013
select FORMAT(joiningdate, 'dd MM yyyy') as NewDate from EmployeeDetails

Alter table employeedetails alter column joiningdate DateTime
select * from employeedetails

----16) Show "JoiningDate" in "yyyy/mm/dd" format, ex- "2013/02/15"
select FORMAT(joiningdate, 'yyyy/MM/dd') as NewDate from Employeedetails
select * from employeedetails

---17) Show only time part of the "JoiningDate"

select format(joiningdate,'hh:mm') as Time  from employeedetails


---18)  Get only Year part of "JoiningDate"

SELECT YEAR(JoiningDate) AS JoiningYear FROM EmployeeDetails

----19)  Get only Month part of "JoiningDate”

SELECT MONTH(JoiningDate) AS JoiningMonth FROM EmployeeDetails

---20) Get system date

SELECT GETDATE() AS CurrentDate;
---21) 	Get UTC date.
  
  SELECT GETUTCDATE() AS CurrentUTCDate

  ---22) Get the first name, current date, joiningdate and diff between current date and joining date in months.

  SELECT 
    FirstName,
    GETDATE() AS CurrentDate,
    JoiningDate,
    DATEDIFF(MONTH, JoiningDate, GETDATE()) AS MonthsDifference
FROM EmployeeDetails

---23) Get the first name, current date, joiningdate and diff between current date and joining date in days.

SELECT 
    FirstName,
    GETDATE() AS CurrentDate,
    JoiningDate,
    DATEDIFF(DAY, JoiningDate, GETDATE()) AS DaysDifference
FROM EmployeeDetails


----24) Get all employee details from EmployeeDetail table whose joining year is 2013

SELECT * FROM EmployeeDetails WHERE YEAR(JoiningDate) = 2013;

---25) Get all employee details from EmployeeDetail table whose joining month is Jan(1)

SELECT * FROM EmployeeDetails  WHERE MONTH(JoiningDate) = 1;

---26) Get the count of employees in the "EmployeeDetail" table:

SELECT COUNT(*) AS EmployeeCount FROM EmployeeDetails ;

---27) Select only one/top 1 record from the "EmployeeDetail" table:

SELECT TOP 1 * FROM EmployeeDetails

---28)Select all employee details with First name "Vikas", "Ashish", and "Nikhil":

SELECT * FROM EmployeeDetails  WHERE FirstName IN ('Vikas', 'Ashish', 'Nikhil');

---29) SELECT * FROM EmployeeDetail WHERE FirstName NOT IN ('Vikas', 'Ashish', 'Nikhil');
 
 SELECT * FROM EmployeeDetails WHERE FirstName NOT IN ('Vikas', 'Ashish', 'Nikhil');


 ---30) Select first name from "EmployeeDetail" table after removing white spaces from the right side:

 SELECT RTRIM(FirstName) AS FirstName FROM EmployeeDetails ;

 ---31) Select first name from "EmployeeDetail" table after removing white spaces from left side

 SELECT LTRIM(FirstName) AS FirstName FROM EmployeeDetails
----32)  Display first name and Gender as M/F.(if male then M, if Female then F)

SELECT FirstName, CASE WHEN Gender = 'Male' THEN 'M' ELSE 'F' END AS Gender FROM EmployeeDetails

---33) Select first name from "EmployeeDetail" table prefixed with "Hello":

SELECT 'Hello ' + FirstName AS Greeting FROM EmployeeDetails


----34) Get employee details from "EmployeeDetail" table whose Salary is greater than 600,000:

SELECT * FROM EmployeeDetails WHERE Salary > 600000;

---35)  Get employee details from "EmployeeDetail" table whose Salary less than 700000

SELECT * FROM EmployeeDetails WHERE Salary < 700000;

---36) Get employee details from "EmployeeDetail" table whose Salary between 500000 than 600000

SELECT * FROM EmployeeDetails  WHERE Salary BETWEEN 500000 AND 600000;


----- 37)  Give records of ProjectDetail table
Create Table ProjectDetail_Table(ProjectDetail_ID INT,EmployeeDetail_ID INT,ProjectName varchar(max))

Insert into ProjectDetail_Table
Values('1','1','Task Track'),
('2','1','CLP'),
('3','1','Survey Management'),
('4','2','HR Management'),
('5','3','Task Track'),
('6','3','GRS'),
('7','3','DDS'),
('8','4','HR Management'),
('9','6','GL Management')
Select * from ProjectDetail_Table

Drop table ProjectDetail_Table

----38) Write the query to get the department and department wise total(sum) salary from "EmployeeDetail" table.

SELECT Department, SUM(Salary) AS TotalSalary
FROM EmployeeDetails
GROUP BY Department;

----39)  Write the query to get the department and department wise total(sum) salary, display it in ascending order according to salary.

SELECT Department, SUM(Salary) AS TotalSalary
FROM EmployeeDetails
GROUP BY Department
ORDER BY TotalSalary ASC;

----40) Write the query to get the department and department wise total(sum) salary, display it in descending order according to salary

SELECT Department, SUM(Salary) AS TotalSalary
FROM EmployeeDetails
GROUP BY Department
ORDER BY TotalSalary DESC;

----41)  Write the query to get the department, total no. of departments, total(sum) salary with respect to department from "EmployeeDetail" table.

SELECT Department, COUNT(DISTINCT Department) AS TotalDepartments, SUM(Salary) AS TotalSalary
FROM EmployeeDetails
GROUP BY Department;

---42)  Get department wise average salary from "EmployeeDetail" table order by salary ascending

SELECT Department, AVG(Salary) AS AverageSalary
FROM EmployeeDetails
GROUP BY Department
ORDER BY AverageSalary ASC;

---- 43) Get department wise maximum salary from "EmployeeDetail" table order by salary ascending

SELECT Department, MAX(Salary) AS MaxSalary
FROM EmployeeDetails
GROUP BY Department
ORDER BY MaxSalary ASC;

----44) Get department wise minimum salary from "EmployeeDetail" table order by salary ascending

SELECT Department, MIN(Salary) AS MinSalary
FROM EmployeeDetails
GROUP BY Department
ORDER BY MinSalary ASC;

---- 45) Join both the table that is Employee and ProjectDetail based on some common paramter

SELECT *
FROM EmployeeDetailS
INNER JOIN ProjectDetail_Table ON EmployeeDetails.Employee_ID = ProjectDetail_Table.EmployeeDetail_ID;

----46) Get employee name, project name order by firstname from "EmployeeDetail" and "ProjectDetail" for those employee which have assigned project already
select department, avg (salary) avg_salary from EmployeeDetails group by department order by avg_salary



-----47)Get department wise maximum salary from "EmployeeDetail" table order by salary ascending
select department , max(salary)salary from EmployeeDetails group by department order by salary
select * from EmployeeDetails

----48)Get department wise minimum salary from "EmployeeDetail" table order by salary ascending.
select department , min(salary)salary from EmployeeDetails group by department order by salary

----49)Get department wise minimum salary from "EmployeeDetail" table order by salary descending
select department , min(salary)salary from EmployeeDetails group by department order by salary desc

----50) Join both the table that is Employee and ProjectDetail based on some common paramter
SELECT ed.*, Pd.*
FROM EmployeeDetails AS ed
inner JOIN ProjectDetail_Table AS Pd ON ed.employee_id= Pd.employeedetail_id
select * from ProjectDetail_Table

-----51)Get employee name, project name order by firstname from "EmployeeDetail" and "ProjectDetail" for those employee which have assigned project already.

select ed.firstName,ed.LastName,Pd.ProjectName from employeedetails as ed
left join ProjectDetail_Table as Pd on ed.employee_id=Pd.EmployeeDetail_ID  where pd.employeedetail_id is not null order by firstname

-----52)Get employee name, project name order by firstname from "EmployeeDetail" and "ProjectDetail" for all employee even they have not assigned project.

select ed.firstName,ed.LastName,Pd.ProjectName from employeedetails as ed
left join ProjectDetail_Table as Pd on ed.employee_id=Pd.EmployeeDetail_ID   order by firstname

---53)Get employee name, project name order by firstname from "EmployeeDetail" and "ProjectDetail" for all employee if project is not assigned then

select ed.firstName,ed.LastName,coalesce(Pd.ProjectName, 'Not Assigned') from employeedetails as ed
left join ProjectDetail_Table as Pd on ed.employee_id=Pd.EmployeeDetail_ID 

---54)Get all project name even they have not matching any employeeid, in left table, order by firstname from "EmployeeDetail" and "ProjectDetail

select ed.firstName,ed.LastName,Pd.ProjectName from employeedetails as ed
right join ProjectDetail_Table  as Pd on ed.employee_id=Pd.EmployeeDetail_ID order by firstname


----55) Get complete record (employeename, project name) from both tables ([EmployeeDetail],[ProjectDetail]), if no match found in any table then show NULL

select ed.firstName,ed.LastName,Pd.ProjectName from employeedetails as ed
full join ProjectDetail_Table as Pd on ed.employee_id=Pd.EmployeeDetail_ID order by firstname

---56)Write down the query to fetch EmployeeName& Project who has assign more than one project

select count (ProjectDetail_Table.projectname), employeedetailS.firstname from ProjectDetail_Table left join employeedetails on employeedetails.Employee_ID
=ProjectDetail_Table.employeedetail_id group by employeedetails.firstname having count (ProjectDetail_Table.projectname)>1


----57) Write down the query to fetch ProjectName on which more than one employee are working along with EmployeeName


select count (ProjectDetail_Table.projectname), employeedetails.firstname from ProjectDetail_Table left join employeedetails on employeedetails.Employee_ID
=ProjectDetail_Table.employeedetail_id group by employeedetails.firstname having count (ProjectDetail_Table.projectname)<1

---58) Apply Cross Join in Both the tables

select * from employeedetails cross join ProjectDetail_Table

Select * from EmployeeDetails
Select * from ProjectDetail_Table 

-----------------------------------------------------------------------------------------------------------------------------------------

