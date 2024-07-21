-- View the data
SELECT * FROM Pizza_Sales;


-- Total Revenue: the sum of total price of all pizza orders.
SELECT SUM(Total_Price) AS Total_Revenue FROM Pizza_Sales;
-- Output:
-- -------------------
-- | Total_Revenue   |
-- ------------------- 
-- | 817860.05083847 |
-- -------------------


-- Average order value: The average amount spent per order, calculated by divided the total revenue by the number of cost
SELECT SUM(Total_Price) / COUNT(DISTINCT Order_ID) AS Average_Order_Value FROM Pizza_Sales;
-- Output: 
-- -----------------------
-- | Average_Order_Value |
-- ----------------------- 
-- | 38.3072623343546    |
-- ----------------------- 



-- Total Pizza Sold: The sum of the quantities of all pizzas sold
SELECT SUM(Quantity) AS Total_Pizza_Sold FROM Pizza_Sales;
-- Output: 
-- --------------------
-- | Total_Pizza_Sold |
-- -------------------- 
-- | 49574            |
-- --------------------


-- Total Orders: The total number of orders placed.
SELECT COUNT(DISTINCT Order_ID) AS Total_Orders FROM Pizza_Sales;
-- Output: 
-- ----------------
-- | Total_Orders |
-- ---------------- 
-- | 21350        |
-- ----------------


-- Average Pizza Per Order: The average number of pizzas sold per order,calcualated by dividing the total number of pizzas sold by the total number of orders
SELECT CAST(CAST(SUM(Quantity) AS DECIMAL(10,2)) /
CAST(COUNT(DISTINCT Order_ID) AS DECIMAL(10,2)) AS DECIMAL(10,2)) AS Avg_Pizzas_Per_Order FROM Pizza_Sales;
-- Output:
-- -----------------------
-- | vg_Pizzas_Per_Order |
-- ----------------------- 
-- | 2.32                |
-- -----------------------


-- Daily Trends for Total Orders
SELECT DATENAME(DW, Order_Date) AS Order_Day, COUNT(DISTINCT Order_ID) AS Total_Orders 
FROM Pizza_Sales
GROUP BY DATENAME(DW, Order_Date)
-- Output: 
-- ----------------------------
-- | Order_Day | Total_Orders |
-- ----------------------------
-- | Saturday  | 3158         |
-- | Wednesday | 3024         |
-- | Monday    | 2794         |
-- | Sunday    | 2624         |
-- | Friday    | 3538         |
-- | Thursday  | 3239         |
-- | Tuesday   | 2973         |
-- ----------------------------


-- Monthly Trends for Total order
SELECT DATENAME(MONTH, Order_Date) AS Month_Name , COUNT(DISTINCT Order_ID) AS Total_Orders
FROM Pizza_Sales
GROUP BY DATENAME(MONTH, Order_Date)
ORDER BY Total_Orders DESC
-- Ouput:
-- -----------------------------
-- | Month_Name | Total_Orders |
-- -----------------------------
-- | July       | 1935         |
-- | May        | 1853         |
-- | January    | 1845         |
-- | August     | 1841         |
-- | March      | 1840         |
-- | April      | 1799         |
-- | November   | 1792         |
-- | June:      | 1773         |
-- | February   | 1685         |
-- | December   | 1680         |
-- | September  | 1661         |
-- | October    | 1646         |
   -----------------------------


-- Percentage  of sales by Pizza Category
SELECT Pizza_Category, SUM(Total_Price) AS Total_Sale,SUM(Total_Price)  * 100 /
(SELECT SUM(Total_Price) FROM Pizza_Sales) AS Total_Sale_Percentage
FROM Pizza_Sales 
GROUP BY Pizza_Category;
-- Output:
-- -------------------------------------------------------------
-- | Pizza_Category | Total_Sale       | Total_Sale_Percentage |
-- ------------------------------------------------------------- 
-- | Classic        | 220053.100021362 | 26.9059602306976      |
-- | Chicken        | 195919.5         | 23.9551375322885      |
-- | Veggie         | 193690.451004028 | 23.6825910258677      |
-- | Supreme        | 208196.99981308  | 25.4563112111462      |
-- -------------------------------------------------------------


-- Percentage of Sales of Pizza Size
SELECT Pizza_Size, SUM(Total_Price) AS Total_Sale,SUM(Total_Price)  * 100 /
(SELECT SUM(Total_Price) FROM Pizza_Sales) AS Total_Sale_Percentage
FROM Pizza_Sales 
GROUP BY Pizza_Size
ORDER BY Total_Sale_Percentage DESC
-- Output:
-- ---------------------------------------------------------
-- | Pizza_Size | Total_Sale       | Total_Sale_Percentage |
-- ---------------------------------------------------------
-- | S          | 178076.49981308  | 21.7734684107037      |
-- | M          | 249382.25        | 30.492044420599       |
-- | L          | 375318.701004028 | 45.890333024488       |
-- | XL         | 14076            | 1.72107684995364      |
-- | XXL        | 1006.6000213623  | 0.123077294254725     |
-- ---------------------------------------------------------


-- Total Pizzas Sold by Pizza Category
SELECT Pizza_Category, SUM(Quantity) AS Total_Quantity_Sold 
FROM Pizza_Sales
GROUP BY Pizza_Category
ORDER BY Total_Quantity_Sold DESC 
-- Output:
-- ----------------------------------------
-- | Pizza_Category | Total_Quantity_Sold |
-- ----------------------------------------
-- | Classic        | 14888               |
-- | Supreme        | 11987               |
-- | Veggie         | 11649               |
-- | Chicken        | 11050               |
-- ----------------------------------------


-- Top 5 Pizzas by Revenue
SELECT TOP 5 Pizza_Name, SUM(Total_Price) AS Total_Revenue 
FROM Pizza_Sales
GROUP BY Pizza_Name
ORDER BY Total_Revenue DESC 
-- Output:
-- ------------------------------------------------
-- | Pizza_Name                   | Total_Revenue |
-- ------------------------------------------------
-- | The Thai Chicken Pizza       | 43434.25      |
-- | The Barbecue Chicken Pizza   | 42768         |
-- | The California Chicken Pizza | 41409.5       |
-- | The Classic Deluxe Pizza     | 38180.5       |
-- | The Spicy Italian Pizza      | 34831.25      |
-- ------------------------------------------------


-- Bottom 5 Pizza by Revenue
SELECT TOP 5 Pizza_Name, SUM(Total_Price) AS Total_Revenue 
FROM Pizza_Sales
GROUP BY Pizza_Name
ORDER BY Total_Revenue ASC
-- Output:
-- ------------------------------------------------
-- | Pizza_Name                | Total_Revenue    |
-- ------------------------------------------------
-- | The Brie Carre Pizza:     | 11588.4998130798 |
-- | The Green Garden Pizza    | 13955.75         |
-- | The Spinach Supreme Pizza | 15277.75         |
-- | The Mediterranean Pizza   | 15360.5          |
-- | The Spinach Pesto Pizza   | 15596            |
-- ------------------------------------------------


-- Top 5 Pizzas by Quantity
SELECT TOP 5 Pizza_Name, SUM(Quantity) AS Total_Pizza_Sold
FROM Pizza_Sales
GROUP BY Pizza_Name
ORDER BY Total_Pizza_Sold DESC 
-- Output:
-- -------------------------------------------------
-- | Pizza_Name                 | Total_Pizza_Sold |
-- -------------------------------------------------
-- | The Classic Deluxe Pizza   | 2453             |
-- | The Barbecue Chicken Pizza | 2432             |
-- | The Hawaiian Pizza         | 2422             |
-- | The Pepperoni Pizza        | 2418             |
-- | The Thai Chicken Pizza     | 2371             |
-- -------------------------------------------------


-- Bottom 5 Pizzas by Quantity
SELECT TOP 5 Pizza_Name, SUM(Quantity) AS Total_Pizza_Sold
FROM Pizza_Sales
GROUP BY Pizza_Name
ORDER BY Total_Pizza_Sold ASC
-- Output:
-- ------------------------------------------------
-- | Pizza_Name                | Total_Pizza_Sold |
-- ------------------------------------------------
-- | The Brie Carre Pizza      | 490              |
-- | The Mediterranean Pizza   | 934              |
-- | The Calabrese Pizza       | 937              |
-- | The Spinach Supreme Pizza | 950              |
-- | The Soppressata Pizza     | 961              |
-- ------------------------------------------------


-- Top 5 Pizzas by Total Orders
SELECT TOP 5 Pizza_Name, COUNT(DISTINCT Order_ID) AS Total_Orders
FROM Pizza_Sales
GROUP BY Pizza_Name
ORDER BY Total_Orders DESC
-- Output:
-- ---------------------------------------------
-- | Pizza_Name                 | Total_Orders |
-- ---------------------------------------------
-- | The Classic Deluxe Pizza   | 2329         |
-- | The Hawaiian Pizza         | 2280         |
-- | The Pepperoni Pizza        | 2278         |
-- | The Barbecue Chicken Pizza | 2273         | 
-- | The Thai Chicken Pizza     | 2225         |
-- ---------------------------------------------


-- Bottom 5 Pizza  by Total Orders
SELECT TOP 5 Pizza_Name, COUNT(DISTINCT Order_ID) AS Total_Orders
FROM Pizza_Sales
GROUP BY Pizza_Name
ORDER BY Total_Orders ASC
-- Output:
-- --------------------------------------------
-- | Pizza_Name                | Total_Orders |
-- --------------------------------------------
-- | The Brie Carre Pizza      | 480          |
-- | The Mediterranean Pizza   | 912          |
-- | The Spinach Supreme Pizza | 918          | 
-- | The Calabrese Pizza       | 918          |
-- | The Chicken Pesto Pizza   | 938          |
-- --------------------------------------------

