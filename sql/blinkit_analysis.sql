CREATE DATABASE blinkit_db
USE blinkit_db;

SELECT * FROM blinkit_cleaned;
SELECT *
FROM blinkit_cleaned
LIMIT 10;
SELECT COUNT(*) AS Total_Records
FROM blinkit_cleaned;

SELECT SUM(Item_Outlet_Sales) AS Total_Sales
FROM blinkit_cleaned;

SELECT AVG(Item_Outlet_Sales) AS Average_Sales
FROM blinkit_cleaned;

SELECT Item_Fat_Content,
       SUM(Item_Outlet_Sales) AS Total_Sales
FROM blinkit_cleaned
GROUP BY Item_Fat_Content;

SELECT Outlet_Type,
       SUM(Item_Outlet_Sales) AS Total_Sales
FROM blinkit_cleaned
GROUP BY Outlet_Type
ORDER BY Total_Sales DESC;

SELECT Outlet_Size,
       SUM(Item_Outlet_Sales) AS Total_Sales
FROM blinkit_cleaned
GROUP BY Outlet_Size;

SELECT Outlet_Location_Type,
       SUM(Item_Outlet_Sales) AS Total_Sales
FROM blinkit_cleaned
GROUP BY Outlet_Location_Type;

SELECT Item_Identifier,
       Item_Outlet_Sales
FROM blinkit_cleaned
ORDER BY Item_Outlet_Sales DESC
LIMIT 10;

SELECT Item_Type,
       COUNT(*) AS Number_of_Products
FROM blinkit_cleaned
GROUP BY Item_Type;

SELECT Item_Type,
       AVG(Item_Outlet_Sales) AS Average_Sales
FROM blinkit_cleaned
GROUP BY Item_Type
ORDER BY Average_Sales DESC;