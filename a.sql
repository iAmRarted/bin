create table nombres 
as select a.nombre, b.nom_ven, c.nombre nom_prov 
from tcliente a, tvendedor b, tprovincia c 
where a.vendedor=b.cod_ven 
and a.provincia (+)=c.codigo ;
-- El (+) es porque hay un cliente con la provincia 'M', pero no existe en tprovincia