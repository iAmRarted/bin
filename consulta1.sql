-- Consulta 1
select *
from emple e1
where exists(
    select *
    from emp_tra_pro trabajador
    where e1.dni = trabajador.dni
    and exists(
        select *
        from PROYECTO p1
        where trabajador.nombreProyecto = p1.nombreProyecto
        and exists(
            select *
            from MAT_PRO mp1
            where mp1.nombreProyecto = p1.nombreProyecto
            and exists(
                select *
                from MATERIA m1
                where m1.nombreMateria = mp1.nombreMateria
                and exists(
                    select *
                    from MAT_ART ma1
                    where ma1.nombreMateria = m1.nombreMateria)))));
