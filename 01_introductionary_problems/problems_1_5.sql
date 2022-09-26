-- Introductionary problems 1-5

--1. Which shippers do we have?
--We have a table called Shippers. Return all the fields from all the shippers
--
--Hint
--The standard format for a select statement that returns all columns and all rows is “Select * from 
--TableName”

select * from Northwind.dbo.Shippers


--2. Certain fields from Categories
--In the Categories table, selecting all the fields using this SQL:
--Select * from Categories
--…will return 4 columns. We only want to see two columns, CategoryName and Description. 
--Hint
--Instead of * in the Select statement, specify the column names with a comma between them

select
	CategoryName,
	Description 
from Northwind.dbo.Categories

--3. Sales Representatives
--We’d like to see just the FirstName, LastName, and HireDate of all the employees with the Title of Sales 
--Representative. Write a SQL statement that returns only those employees.
--Hint
--To filter out only certain rows from a table, use a Where clause. The format for a where clause with a 
--string filter is:
--Where
-- FieldName = 'Filter Text'

select 
	FirstName,
	LastName,
	HireDate
from Northwind.dbo.Employees
	where Title = 'Sales Representative'
	-- ili Title like 'Sales%'

--4. Sales Representatives in the United States
--Now we’d like to see the same columns as above, but only for those employees that both have the title of 
--Sales Representative, and also are in the United States.
--Hint
--To apply multiple filters in a where clause, use “and” to separate the filters.

select 
	FirstName,
	LastName,
	HireDate
from Northwind.dbo.Employees
	where Title = 'Sales Representative' and Country = 'USA'

--5. Orders placed by specific EmployeeID
--Show all the orders placed by a specific employee. The EmployeeID for this Employee (Steven
--Buchanan) is 5.--Hint
--The EmployeeID is an integer field, and not a string field. So, the value “5” does not need to be 
--surrounded by single quotes in the where clause.select	OrderID,	OrderDatefrom Northwind.dbo.Orderswhere EmployeeID = 5





-- za pogledati::
--database object  -- sql data types (i.e. tipovi varijabli)


