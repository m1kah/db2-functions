select xmlserialize(
               content xmlelement(
                name "department", xmlattributes(
                        d.deptname as "name"
                    ),
                xmlagg(
                        xmlelement(
                                name "project", p.projname
                            )
                        order by p.projname
                    )
            )
           as clob(500)
           )
    from department d
    inner join project p on p.deptno = d.deptno
    group by d.deptname
;
