--11. Showing only the Date with a DateTime field
--In the output of the query above, showing the Employees in order of BirthDate, we see the time of the 
--BirthDate field, which we don’t want. Show only the date portion of the BirthDate field.--Hint
--Use the Convert function to convert the BirthDate column (originally a DateTime column) to a Date 
--column

select
	FirstName,
	LastName,
	Title,
	CONVERT(Date, BirthDate) as Date
from Northwind.dbo.Employees
	order by BirthDate

--12. Employees full name
--Show the FirstName and LastName columns from the Employees table, and then create a new column 
--called FullName, showing FirstName and LastName joined together in one column, with a space inbetween
--Hint
--Joining two fields like this is called concatenation. Look online for examples of string concatenation with 
--SQL Server

select 
	FirstName,
	LastName,
	CONCAT(FirstName,' ', LastName) AS FullName
from Northwind.dbo.Employees

--13. OrderDetails amount per line item
--In the OrderDetails table, we have the fields UnitPrice and Quantity. Create a new field, TotalPrice, that 
--multiplies these two together. We’ll ignore the Discount field for now.
--In addition, show the OrderID, ProductID, UnitPrice, and Quantity. Order by OrderID and ProductID.--Hint
--In this computed column, you need to use the arithmetic operator for multiplication.

select
	OrderID
	,ProductID
	,UnitPrice
	,Quantity
	,UnitPrice * Quantity as TotalPrice
from Northwind.dbo.OrderDetails

--14. How many customers?
--How many customers do we have in the Customers table? Show one value only, and don’t rely on getting 
--the recordcount at the end of a resultset.
--Hint
--In order to get the total number of customers, we need to use what’s called an aggregate function. Look 
--online for an aggregate function that would work for this problem.

select
	COUNT (CustomerID) as TotalCustomers
from Northwind.dbo.Customers

--15. When was the first order? 
--Show the date of the first order ever made in the Orders table.
--Hint
--There’s a aggregate function called Min that you need to use for this problem.

select
	min (OrderDate) as FirstOrder
from Northwind.dbo.Orders
