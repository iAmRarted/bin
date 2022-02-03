-- Consulta 8
select *
from INSTITUCION
where exists(
    select *
	from INS_PRO
	where INSTITUCION.nombreInstitucion=INS_PRO.nombreInstitucion
	and exists(
        select *
		from PROYECTO
		where INS_PRO.nombreProyecto=PROYECTO.nombreProyecto
		and exists(
            select *
				from EMP_TRA_PRO
				where EMP_TRA_PRO.nombreProyecto=PROYECTO.nombreProyecto
				having count(dni)=(
					select max(count(dni))
					from EMP_TRA_PRO
					group by dni))));