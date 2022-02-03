-- Consulta 6
select *
from emple
where exists(
    select *
    from emp_tra_pro
    where emp_tra_pro.dni = emple.dni
    having count(emp_tra_pro.dni) = (
        select max(count(dni))
        from emp_tra_pro
        group by dni));