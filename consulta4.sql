-- Consulta 4
select *
from emple
where exists(
    select *
    from EMP_EMP
    where dni = dni_supervisor
    and exists(
        select *
        from emp_inv_pro
        where dni = dni_supervisado
        and exists(
            select *
            from proyecto
            where emp_inv_pro.nombreProyecto = proyecto.nombreProyecto
            and not exists(
                select *
                from articulo
                where articulo.nombreProyecto = proyecto.nombreProyecto))));
