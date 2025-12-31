-- Total sales revenue
SELECT 
    SUM(o.quantity * p.price) AS total_sales
FROM Orders o
JOIN Products p ON o.product_id = p.product_id;

-- Monthly revenue
SELECT 
    MONTH(o.order_date) AS month,
    SUM(o.quantity * p.price) AS monthly_revenue
FROM Orders o
JOIN Products p ON o.product_id = p.product_id
GROUP BY MONTH(o.order_date)
ORDER BY month;

-- Top-selling products
SELECT 
    p.product_name,
    SUM(o.quantity) AS total_quantity,
    SUM(o.quantity * p.price) AS total_revenue
FROM Orders o
JOIN Products p ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_revenue DESC;

-- Customer spending
SELECT 
    c.customer_name,
    SUM(o.quantity * p.price) AS total_spent
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
JOIN Products p ON o.product_id = p.product_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;
