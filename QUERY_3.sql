-- 1. Combine the menu_items and order_details tables into a single table.
SELECT * FROM menu_items as mi
JOIN order_details as OD ON mi.menu_item_id = od.item_id;

-- 2. What were the least and most ordered items? what categories were they in?
SELECT item_name, category,COUNT(order_details_id) as num_pharcheses FROM menu_items as mi
JOIN order_details as OD ON mi.menu_item_id = od.item_id
GROUP BY item_name,category
order BY num_pharcheses ;

-- 3. what were the top 5 orders that spent the most money?

SELECT order_id, sum(price) as total_price FROM menu_items as mi
JOIN order_details as OD ON mi.menu_item_id = od.item_id
GROUP BY order_id
ORDER BY total_price DESC limit 5;


-- 4. View the details of the highest spend order. What insights can you gather from the results?

SELECT category, count(item_id) FROM menu_items as mi
JOIN order_details as OD ON mi.menu_item_id = od.item_id
Where order_id = 440
GROUP BY category;
-- order by price DESC;

-- 5. View the details of the top 5 highest spend orders. What insights can you gather from the results?
SELECT order_id, category, count(item_id) FROM menu_items as mi
JOIN order_details as OD ON mi.menu_item_id = od.item_id
Where order_id IN (440,2075,1957,330,2675)
GROUP BY order_id,category;
