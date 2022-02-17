-- Consulta 5

accept caracter prompt 'Introduce el caracter de la materia: '

select *
from materia_no_especial
where exists(
    select *
    from materia
    where materia_no_especial.nombreMateria = materia.nombreMateria
    and exists(
        select *
        from MAT_ART
        where materia_no_especial.nombreMateria  = MAT_ART.nombreMateria
        and exists(
            select *
            from articulo
            where MAT_ART.NUMEROARTICULO = articulo.numeroArticulo
            and exists(
                select *
                from proyecto
                where proyecto.nombreProyecto = articulo.nombreProyecto
                and caracter = '&caracter'
                and exists( 
                    select *
                    from ins_pro
                    where ins_pro.nombreProyecto = proyecto.nombreProyecto
                    group by nombreProyecto
                    having 1 < count(distinct(nombreInstitucion)))))));


    