-- Consulta 9
select *
from proyecto
where exists(
    select *
    from ins_pro
    where proyecto.nombreProyecto = ins_pro.nombreProyecto
    having count(fecha) = 1);