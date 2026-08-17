-- 05_business_queries.sql: Business Intelligence & Analytics Queries

SELECT 
    c.city,
    c.country,
    ROUND(SUM(f.sales)::numeric, 2) AS total_sales,
    ROUND(SUM(f.profit)::numeric, 2) AS total_profit
FROM fact_sales f
JOIN dim_customers c ON f.customer_id = c.customer_id
GROUP BY c.city, c.country
ORDER BY total_sales DESC
LIMIT 5;

SELECT 
    c.customer_id,
    c.customer_name,
    c.segment,
    ROUND(SUM(f.sales)::numeric, 2) AS total_spent,
    SUM(f.quantity) AS total_items_bought
FROM fact_sales f
JOIN dim_customers c ON f.customer_id = c.customer_id
GROUP BY c.customer_id, c.customer_name, c.segment
ORDER BY total_spent DESC
LIMIT 5;

SELECT 
    c.segment,
    COUNT(DISTINCT f.order_id) AS total_orders,
    ROUND(SUM(f.sales)::numeric, 2) AS total_sales,
    ROUND(SUM(f.profit)::numeric, 2) AS total_profit
FROM fact_sales f
JOIN dim_customers c ON f.customer_id = c.customer_id
GROUP BY c.segment
ORDER BY total_sales DESC;