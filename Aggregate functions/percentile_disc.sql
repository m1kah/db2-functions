select percentile_disc(0.95) within group (order by years asc)
    from staff;
