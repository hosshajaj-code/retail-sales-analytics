-- 06_kpis.sql: Key Performance Indicators (KPIs) Dashboard Metrics

SELECT 
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT customer_id) AS total_customers,
    ROUND(SUM(sales)::numeric, 2) AS total_revenue,
    ROUND(SUM(profit)::numeric, 2) AS total_profit,
    ROUND(AVG(sales)::numeric, 2) AS average_order_value,
    ROUND((SUM(profit)::numeric / NULLIF(SUM(sales), 0)) * 100, 2) AS profit_margin_percentage,    ROUND(AVG(discount)::numeric, 4) AS average_discount
FROM fact_sales;