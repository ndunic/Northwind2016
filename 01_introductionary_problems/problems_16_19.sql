--16. Countries where there are customers 
--Show a list of countries where the Northwind company has customers.
--Hint
--You’ll want to use the Group By clause for this query.

select
	Country
from Northwind.dbo.Customers
group by Country

--17. Contact titles for customers
--Show a list of all the different values in the Customers table for ContactTitles. Also include a count for 
--each ContactTitle.
--This is similar in concept to the previous question “Countries where there are customers”, except we now 
--want a count for each ContactTitle.
--Hint
--The answer for this problem builds on multiple concepts introduced in previous problem, such as 
--grouping, aggregate functions, and aliases.

select
	ContactTitle
	,count(*) as TotalContactTitle
from Northwind.dbo.Customers
group by ContactTitle
order by TotalContactTitle desc

--18. Products with associated supplier names
--We’d like to show, for each product, the associated Supplier. Show the ProductID, ProductName, and the 
--CompanyName of the Supplier. Sort by ProductID.
--This question will introduce what may be a new concept, the Join clause in SQL. The Join clause is used 
--to join two or more relational database tables together in a logical way. 
--Here’s a data model of the relationship between Products and Suppliers. 
--Hint
--Just as a reference, here’s an example of what the syntax for the Join looks like, using different tables 
--from the Northwind database. It will show all the products, with the associated CategoryName.
--Select
-- ProductID
-- ,ProductName
-- ,CategoryName
--From Products
-- Join Categories
-- on Products.CategoryID = Categories.CategoryID

select
	 Products.ProductID
	,Products.ProductName
	,Suppliers.CompanyName
from Northwind.dbo.Products
Join Northwind.dbo.Suppliers ON Products.SupplierID = Suppliers.SupplierID
 -- OVO JE NEUREDNO! trebam skuziti te pathove da bi se urednije napisa kod!!!


--19. Orders and the Shipper that was used
--We’d like to show a list of the Orders that were made, including the Shipper that was used. Show the 
--OrderID, OrderDate (date only), and CompanyName of the Shipper, and sort by OrderID.
--In order to not show all the orders (there’s more than 800), show only those rows with an OrderID of less 
--than 10300.
--Hint
--First, create a SQL statement that shows only the rows and columns you need from the Orders table. 
--Then, work on adding the join to the Shipper table, and the necessary field from that table.
--This data model should help you visualize the join between the Orders table and the Shippers table.

select
	OrderID
	,CONVERT (Date, Orders.OrderDate) as Date
	,Shippers.CompanyName as Shipper
from Northwind.dbo.Orders
Join Northwind.dbo.Shippers ON Orders.ShipVia = Shippers.ShipperID
where Orders.OrderID < 10300  -- order by ide zadnji
order by Orders.OrderID

  -- dok sam ja skuzila da su razlicita imena ovih stupaca
--select
--	shipperID
--from NorthWind.dbo.Shippers

--select
--	ShipVia
--from Northwind.dbo.Orders
	
