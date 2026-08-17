CREATE SCHEMA IF NOT EXISTS staging;

SELECT 
    "Order.ID",
    "Order.Date",
    "Customer.ID",
    "Customer.Name",
    "Category",
    "City",
    "Country"
FROM public.orders
LIMIT 5;