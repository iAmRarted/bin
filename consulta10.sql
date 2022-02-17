-- Consulta 10
select distinct(ambito)
from materia_no_especial
where exists(
    select *
    from materia
    where materia.nombreMateria = materia_no_especial.nombreMateria
    and exists(
        select *
            from mat_pro
            where materia.nombreMateria = mat_pro.nombreMateria
            and exists(
                select *
                from proyecto
                where proyecto.nombreProyecto = mat_pro.nombreProyecto
                and exists(
                    select *
                    from emp_tra_pro
                    where mat_pro.nombreProyecto = emp_tra_pro.nombreProyecto
                    and exists(
                        select *
                        from emple
                        where emp_tra_pro.dni = emple.dni
                        and not exists(
                            select *
                            from emp_emp
                            where dni_supervisor = dni))))));