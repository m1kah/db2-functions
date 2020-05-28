select empno,workdept,salary from employee
    order by salary;

select cume_dist(31840)
    within group (order by salary desc)
    from employee;

select cume_dist(152750)
    within group (order by salary)
    from employee;