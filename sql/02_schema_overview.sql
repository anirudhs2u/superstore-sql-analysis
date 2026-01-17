-- Schema overview and column sanity checks

-- View table structure
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'superstore'
ORDER BY ordinal_position;

-- Check date range of orders
SELECT MIN(order_date_dt) AS first_order_date,
MAX(order_date_dt) AS last_order_date 
FROM superstore;

-- Check distinct counts for key dimensions
SELECT COUNT(DISTINCT customer_id) AS total_customers,
COUNT(DISTINCT order_id) AS total_orders,
COUNT(DISTINCT product_id) AS total_products
FROM superstore;
