-- Data validation checks
SELECT COUNT(*) AS total_rows FROM superstore;

SELECT COUNT(*) AS null_order_date FROM superstore WHERE oder_date IS NULL;
