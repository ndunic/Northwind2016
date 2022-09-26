--6. Suppliers and ContactTitles
--In the Suppliers table, show the SupplierID, ContactName, and ContactTitle for those Suppliers whose 
--ContactTitle is not Marketing Manager.--Hint
--To learn how to do the "not", you can search online for SQL comparison operators

select
	SupplierID,
	ContactName,
	ContactTitle
from Northwind.dbo.Suppliers
	where ContactTitle <> 'Marketing Manager'
	-- ili where NOT ContactTitle = 'nesto'

--7. Products with "queso" in ProductName
--In the products table, we’d like to see the ProductID and ProductName for those products where the 
--ProductName includes the string "queso". 
--Hint
--In an earlier problem, we were looking for exact matches—where our filter matched the value in the field 
--exactly. Here, we’re looking for rows where the ProductName field has the value "queso" somewhere in 
--it. 
--Use the "like" operator, with wildcards, in the answer. Feel free to do some research online to find 
--examples. 

select
	ProductID,
	ProductName
from Northwind.dbo.Products
 where ProductName like '%queso%'

--8. Orders shipping to France or Belgium
--Looking at the Orders table, there’s a field called ShipCountry. Write a query that shows the OrderID, 
--CustomerID, and ShipCountry for the orders where the ShipCountry is either France or Belgium. 
--Hint
--In the where clause, instead of combining the filters with an “and” use the “or”. 

select
	OrderID,
	CustomerID,
	ShipCountry
from Northwind.dbo.Orders
where ShipCountry = 'France' OR ShipCountry = 'Belgium'

--9. Orders shipping to any country in Latin America
--Now, instead of just wanting to return all the orders from France or Belgium, we want to show all the 
--orders from any Latin American country. But we don’t have a list of Latin American countries in a table 
--in the Northwind database. So, we’re going to just use this list of Latin American countries that happen to 
--be in the Orders table:
--Brazil
--Mexico
--Argentina
--Venezuela
--It doesn’t make sense to use multiple Or statements anymore, it would get too convoluted. Use the In 
--statement.--Hint
--Here’s an example of the previous questions, about orders shipping to France or Belgium, done as an In 
--statement instead of using multiple Where clauses.
--Select
-- OrderID
-- ,CustomerID
-- ,OrderDate
-- ,ShipCountry
--From Orders
--where
-- ShipCountry in ('France','Belgium')-- kako izvuci sve unique podatke iz tabliceselect
distinct ShipCountry
from Northwind.dbo.Orders
order by 1-- rjesenjeSelect
 OrderID
 ,CustomerID
 ,OrderDate
 ,ShipCountry
From Orders
where ShipCountry in ('Argentina','Brazil','Mexico','Venezuela')--10. Employees, in order of age
--For all the employees in the Employees table, show the FirstName, LastName, Title, and BirthDate. Order 
--the results by BirthDate, so we have the oldest employees first.--Hint
--You’ll need to use the Order by clause here for sorting the results. Look online for examplesselect	FirstName	, LastName	, Title	, BirthDateFrom Northwind.dbo.Employeesorder by BirthDate -- iza 4 dodas desc za descending

--test za git