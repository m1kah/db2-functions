select sales_date, units_sold as total_units_per_date from (
    select
       sales_date,
       sales_person,
       sum(sales) as units_sold,
       grouping(sales_date) as date_group,
       grouping(sales_person) as sales_group
    from sales
    group by cube (sales_date, sales_person)
    order by sales_date, sales_person
)
    where sales_group = 1 and date_group = 0
    order by total_units_per_date desc;
