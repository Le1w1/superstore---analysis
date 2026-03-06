-- Profit por sub-categoria ordenado de menor a mayor
select
	p.category,
	p.sub_category,
	round(sum(f.profit), 2) as total_profit,
	round(avg(f.discount), 2) as average_discount
from fact_ventas f
join dim_producto p on f.product_id = p.product_id
group by p.category, p.sub_category
order by total_profit asc;