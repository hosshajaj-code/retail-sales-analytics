DROP TABLE IF EXISTS fact_sales;

CREATE TABLE fact_sales AS
SELECT 
    "Order.ID" AS order_id,
    "Order.Date" AS order_date,
    "Customer.ID" AS customer_id,
    "Product.ID" AS product_id,
    "Sales" AS sales,
    "Quantity" AS quantity,
    "Discount" AS discount,
    "Profit" AS profit
FROM public.orders;

ALTER TABLE fact_sales
ADD CONSTRAINT fk_fact_customer 
FOREIGN KEY (customer_id) REFERENCES dim_customers(customer_id);

SELECT * FROM fact_sales LIMIT 5;