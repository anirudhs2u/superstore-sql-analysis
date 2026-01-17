-- Profitability analysis by category and sub-category
-- This identifies high-performing and loss-making areas

-- Category-level performance
SELECT category,
SUM(sales) AS total_sales,
SUM(profit) AS total_profit,
ROUND(SUM(profit) / NULLIF(SUM(sales), 0) * 100, 2) AS profit_margin_pct
FROM superstore
GROUP BY category
ORDER BY profit_margin_pct DESC;

-- Sub-category-level performance
SELECT sub_category,
SUM(sales) AS total_sales,
SUM(profit) AS total_profit,
ROUND(SUM(profit) / NULLIF(SUM(sales), 0) * 100, 2) AS profit_margin_pct
FROM superstore
GROUP BY sub_category
ORDER BY profit_margin_pct;
