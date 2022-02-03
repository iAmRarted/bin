-- Consulta 2
select *
from INSTITUCION
where exists(
    select *
    from ins_pro
    where INSTITUCION.nombreInstitucion = ins_pro.nombreInstitucion
    and exists(
        select *
        from PROYECTO
        where ins_pro.nombreProyecto = proyecto.nombreProyecto
        and exists(
            select *
            from MAT_PRO
            where proyecto.nombreProyecto = mat_pro.nombreProyecto
            and exists(
                select *
                from MATERIA
                where mat_pro.nombreMateria = materia.nombreMateria
                and exists(
                    select *
                    from MATERIA_ESPECIAL
                    where materia_especial.nombreMateria = materia.nombreMateria)))));
