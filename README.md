# Superstore Sales & Profitability Analysis (SQL)

## Project Overview
This project analyzes the Superstore dataset using PostgreSQL to evaluate sales performance, identify loss-making areas, and uncover profitability drivers.

The analysis focuses on trends, sub-category performance, discount impact, and product-level loss drivers using SQL.

## Executive Summary
Despite consistent sales growth from 2014 to 2017, profitability is uneven across sub-categories.

The Tables sub-category emerges as the largest loss-maker, generating high revenue but operating at negative margins due to aggressive discounting and cost sensitivity. Losses are distributed across multiple table products, indicating a systemic pricing issue rather than isolated product failures.

In contrast, profitable sub-categories such as Chairs maintain healthy margins even at higher sales volumes, highlighting opportunities to replicate pricing and discount strategies.

## Key Insights
- Overall sales show a clear upward trend over time
- Losses are concentrated in specific sub-categories, primarily Tables
- Tables generate high revenue (206K) but operate at a negative margin (-8.6%)
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

