select percentile_cont(0.95) within group (order by years asc)
    from staff;
