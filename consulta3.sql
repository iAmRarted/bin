-- Consulta 3
accept institucion prompt 'Introduce institución: '

select *
from emple
where not exists(
    select *
    from EMP_EMP
    where emple.dni = dni_supervisado
)
and exists(
    select *
    from emp_tra_pro trabajador
    where emple.dni = trabajador.dni
    and exists(
        select *
        from PROYECTO
        where trabajador.nombreProyecto = PROYECTO.nombreProyecto
        and exists(
            select *
            from ins_pro
            where PROYECTO.nombreProyecto = ins_pro.nombreProyecto)));
