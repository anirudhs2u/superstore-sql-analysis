-- Deep dive into loss drivers for Tables sub-category
-- Goal: Identify whether losses are due to few outliers or systemic issues

-- Product-level profit contribution within Tables
SELECT product_name,
SUM(sales) AS total_sales,
SUM(profit) AS total_profit,
ROUND(SUM(profit) / NULLIF(SUM(sales), 0) * 100, 2) AS profit_margin_pct
FROM superstore
WHERE sub_category = 'Tables'
GROUP BY product_name
ORDER BY total_profit;

-- Discount impact on Tables profitability
SELECT ROUND(discount, 2) AS discount_level,
COUNT(*) AS order_count,
SUM(sales) AS total_sales,
SUM(profit) AS total_profit,
ROUND(SUM(profit) / NULLIF(SUM(sales), 0) * 100, 2) AS profit_margin_pct
FROM superstore
WHERE sub_category = 'Tables'
GROUP BY 1
ORDER BY 1;
