-- Overall business performance analysis
-- This file evaluates total sales, profit, and time-based trends

-- Overall sales and profit
SELECT SUM(sales) AS total_sales,
SUM(profit) AS total_profit,
ROUND(SUM(profit) / NULLIF(SUM(sales), 0) * 100, 2) AS profit_margin_pct
FROM superstore;

-- Yearly sales and profit trend
SELECT DATE_TRUNC('year', order_date_dt) AS order_year,
SUM(sales) as total_sales,
SUM(profit) as total_profit,
ROUND(SUM(profit) / NULLIF(SUM(sales), 0) * 100, 2) AS profit_margin_pct
FROM superstore
GROUP BY 1
ORDER BY 1;

-- Monthly sales and profit trend
SELECT DATE_TRUNC('month', order_date_dt) AS order_month,
SUM(sales) as total_sales,
SUM(profit) as total_profit,
ROUND(SUM(profit) / NULLIF(SUM(sales), 0) * 100, 2) AS profit_margin_pct
FROM superstore
GROUP BY 1
ORDER BY 1;
