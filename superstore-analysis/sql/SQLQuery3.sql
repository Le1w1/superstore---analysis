-- Regiones rentables
SELECT 
    u.region,
    ROUND(SUM(f.sales), 2) AS total_sales,
    ROUND(SUM(f.profit), 2) AS total_profit,
    ROUND(AVG(f.profit_margin_pct), 2) AS avg_margin_pct,
    COUNT(DISTINCT f.order_id) AS total_orders
FROM fact_ventas f
JOIN dim_ubicacion u ON f.location_id = u.location_id
GROUP BY u.region
ORDER BY total_profit DESC;