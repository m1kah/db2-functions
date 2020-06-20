select job, listagg(lastname, ', ') within group (order by lastname) from employee
group by job;