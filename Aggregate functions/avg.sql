select * from sales;

select sales_person,
       substring(sales_date, 1, 7) as month,
       decimal(round(avg(cast(sales as decimal(4, 2))), 1), 4, 1) as average_sales
from sales
group by sales_person,substring(sales_date, 1, 7)
order by substring(sales_date, 1, 7);
