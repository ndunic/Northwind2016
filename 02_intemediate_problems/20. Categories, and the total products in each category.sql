--20. Categories, and the total products in each category
--For this problem, we’d like to see the total number of products in each category. Sort the results by the 
--total number of products, in descending order.
--Expected Results
--CategoryName TotalProducts
----------------- -------------
--Confections 13
--Beverages 12
--Condiments 12
--Seafood 12
--Dairy Products 10
--Grains/Cereals 7
--Meat/Poultry 6
--Produce 5
--(8 row(s) affected)
--Hint
--To solve this problem, you need to combine a join, and a group by. 
--A good way to start is by creating a query that shows the CategoryName and all ProductIDs associated 
--with it, without grouping. Then, add the Group byselect 	CategoryName, 	count(1) TotalProductsfrom dbo.Categories catleft join dbo.Products pro on cat.CategoryID = pro.CategoryIDgroup by CategoryNameorder by 2 desc--tesni novi komentar za github