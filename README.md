# Superstore Sales & Profitability Analysis (SQL)

## Project Overview
This project analyzes the Superstore dataset using PostgreSQL to evaluate sales performance, identify loss-making areas, and uncover profitability drivers.

The analysis focuses on trends, sub-category performance, discount impact, and product-level loss drivers using SQL.

## Dataset
- Source: Superstore Sales Dataset
- Records: 9995 rows 
- Time period: 2014–2017
- Format: CSV
- Key fields: Order Date, Sales, Profit, Discount, Category, Sub-Category, Region

## Project Structure
- data/  
  - Superstore_SQL_Project - Clean_Data.csv  
- sql/  
  - 01_data_validation.sql  
  - 02_schema_overview.sql  
  - 03_overall_performance.sql  
  - 04_subcategory_profitability.sql  
  - 05_loss_drivers_tables.sql  
  - 06_profitable_vs_unprofitable.sql  
  - 07_discount_impact.sql  
- README.md

## Analysis Workflow
1. Data validation & null checks
2. Schema understanding
3. Overall sales & profitability trends
4. Sub-category profitability analysis
5. Loss driver identification
6. Profitable vs unprofitable comparisons
7. Discount impact analysis

## Executive Summary
Despite consistent sales growth from 2014 to 2017, profitability is uneven across sub-categories.

The Tables sub-category is the largest loss-maker, generating high revenue but operating at negative margins due to aggressive discounting and cost sensitivity.

In contrast, profitable sub-categories such as Chairs maintain healthy margins even at higher sales volumes, highlighting opportunities to replicate pricing and discount strategies.

## Key Insights
- Overall sales show a clear upward trend over time
- Losses are concentrated in specific sub-categories, primarily Tables
- Tables generate high revenue (~206K) but operate at a negative margin (~-8.6%)
- Product-level analysis reveals widespread losses across table products
- Monthly profit is volatile despite steady sales growth

## Recommendations
- Introduce discount controls and approval thresholds for Tables
- Review logistics, supplier pricing, and warehousing costs for Furniture
- Reprice or discontinue consistently loss-making, low-volume SKUs

## Tools & Skills Used
- PostgreSQL
- pgAdmin
- SQL (GROUP BY, JOINs, DATE_TRUNC, NULLIF)
- Profitability & Margin Analysis
- Business Insight Generation

