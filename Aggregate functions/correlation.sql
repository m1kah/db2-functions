select * from employee;
select * from sales;

select lastname, salary, bonus, comm, sum(sales) as sales_count
    from employee e
        inner join sales s on e.lastname = s.sales_person
    group by lastname, salary, bonus, comm;

select correlation(salary, sales_count) from (
    select salary, sum(sales) as sales_count
    from employee e
        inner join sales s on e.lastname = s.sales_person
    group by lastname, salary
);

select correlation(bonus, sales_count) from (
    select bonus, sum(sales) as sales_count
    from employee e
        inner join sales s on e.lastname = s.sales_person
    group by lastname, bonus
);

select correlation(comm, sales_count) from (
    select comm, sum(sales) as sales_count
    from employee e
        inner join sales s on e.lastname = s.sales_person
    group by lastname, comm
);
