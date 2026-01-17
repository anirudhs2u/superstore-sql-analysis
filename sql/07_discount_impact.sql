-- Impact of discounting on profitability across sub-categories
-- Goal: Identify discount levels that lead to margin erosion

SELECT sub_category,
ROUND(discount, 2) AS discount_level,
COUNT(*) AS order_count,
SUM(sales) AS total_sales,
SUM(profit) AS total_profit,
ROUND(SUM(profit) / NULLIF(SUM(sales), 0) * 100, 2) AS profit_margin_pct
FROM superstore
GROUP BY sub_category, discount_level
ORDER BY sub_category, discount_level;

