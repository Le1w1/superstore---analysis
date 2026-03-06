-- Tendencia de ventas y profit por año y trimestre
SELECT 
    f.order_year,
    f.order_quarter,
    ROUND(SUM(f.sales), 2) AS total_sales,
    ROUND(SUM(f.profit), 2) AS total_profit,
    ROUND(AVG(f.profit_margin_pct), 2) AS avg_margin_pct
FROM fact_ventas f
GROUP BY f.order_year, f.order_quarter
ORDER BY f.order_year, f.order_quarter;