-- Consulta 10
select ambito
from materia_no_especial
where exists(
    select *
    from mat_pro
    where materia_no_especial.nombreMateria = mat_pro.nombreMateria
    and exists(
        select *
        from emp_tra_pro
        where mat_pro.nombreProyecto = emp_tra_pro.nombreProyecto
        and not exists(
            select *
            from emp_emp
            where dni_supervisor = dni)));