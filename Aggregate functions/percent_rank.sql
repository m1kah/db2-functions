select workdept,salary from employee
    where workdept = 'D21'
    order by salary;

select percent_rank(90000) within group (order by salary)
    from employee where workdept = 'D21';
