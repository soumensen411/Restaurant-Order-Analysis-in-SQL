-- THE SITUATION: you've just been Hired as a data analyst for the taste of the World Cafe a 
-- restaurant that has diverse menu offerings and serves generous portions .
-- THE ASSIGNMENT: The taste of the World Cafe debuted a new menu at the start of the year 
-- you've been asked to dig into the customer data to see which menu items are doing 
-- well\not well and what the top customers seems to be like best 
-- THE OBJECTIVES: 1.Explode the menu_items table to get an idea of what's on the new menu 
--                 2.Explore the order_details table to get an idea of the data that's been collected 
--                 3.use both tables to understand how customers are reaching to the new menu 



--  |******************* MY SOLUTION *******************| 
----|---------------------------------------------------|
--1. View the menu_items table.
USE restaurant_db;
SELECT * FROM menu_items;

--2. find the number of items on the menu.
SELECT COUNT(*) FROM menu_items; 

--3. What are the least and most expensive items on the menu?
SELECT * FROM menu_items -- least expensive
ORDER BY price;

SELECT * FROM menu_items -- most expensive
ORDER BY price DESC;

--4. How many italian dishes are on the menu? 
SELECT category , COUNT(category) FROM menu_items
GROUP BY category; -- 9

--5. What are the least and most expensive italian dishes on the menu?
SELECT * FROM menu_items
WHERE category = 'Italian' ORDER BY price ; -- least italian dishes 

SELECT * FROM menu_items
WHERE category = 'Italian' ORDER BY price DESC; -- expensive italian dishes


--6. how many dishes are in each category
SELECT category , COUNT(category) from menu_items
GROUP BY category;

--7. What is the average dish price within each category

SELECT category , AVG(price) from menu_items
GROUP BY category;
