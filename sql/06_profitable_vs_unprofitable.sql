-- Comparison between loss-making and profitable sub-categories
-- Goal: Understand differences in sales, profit, and discount sensitivity

SELECT sub_category,
ROUND(AVG(discount), 2) AS avg_discount,
SUM(sales) AS total_sales,
SUM(profit) AS total_profit,
ROUND(SUM(profit) / NULLIF(SUM(sales), 0) * 100, 2) AS profit_margin_pct
FROM superstore
WHERE sub_category IN ('Tables', 'Chairs')
GROUP BY sub_category;
