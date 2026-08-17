CREATE TABLE dim_customers AS
SELECT 
    "Customer.ID" AS customer_id,
    MAX("Customer.Name") AS customer_name,
    MAX("Segment") AS segment,
    MAX("Country") AS country,
    MAX("City") AS city
FROM public.orders
GROUP BY "Customer.ID";

ALTER TABLE dim_customers
ADD CONSTRAINT pk_dim_customers PRIMARY KEY (customer_id);