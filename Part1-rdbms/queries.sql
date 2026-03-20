-- Q1
SELECT customer_id, SUM(quantity) FROM order_details GROUP BY customer_id;

-- Q2
SELECT product_id, SUM(quantity) FROM order_details GROUP BY product_id LIMIT 3;

-- Q3
SELECT customer_id, COUNT(*) FROM orders GROUP BY customer_id;

-- Q4
SELECT order_id FROM order_details WHERE quantity > 10;

-- Q5
SELECT product_id FROM products WHERE product_id NOT IN (SELECT product_id FROM order_details);