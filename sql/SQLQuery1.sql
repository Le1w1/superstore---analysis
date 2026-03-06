---- Ventas y profit por categoria
select p.category, 
	round(sum(f.sales),2) as total_sales,
	round(sum(f.profit),2) as total_profit,
	round(avg(f.profit_margin_pct),2) as avg_margin_pct
from fact_ventas f
join dim_producto p on f.product_id = p.product_id
group by p.category
order by total_sales desc;