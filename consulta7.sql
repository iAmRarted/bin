-- Consulta 7
select *
from emple
where exists(
    select *
    from emp_emp
    where dni_supervisor = dni
)
and exists(
    select *
    from emp_inv_pro
    where emp_inv_pro.dni = emple.dni
    group by NOMBREPROYECTO
    having count(dni) = (
        select min(count(dni))
        from emp_inv_pro
        where exists(
            select *
            from mat_pro
            where emp_inv_pro.NOMBREPROYECTO = mat_pro.NOMBREPROYECTO
            and exists(
                select *
                from materia_especial
                where mat_pro.nombreMateria = materia_especial.nombreMateria
            )
        )
        group by dni));