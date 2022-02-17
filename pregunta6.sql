select c1.nombre
from tcliente c1
where 1 <= (
    select count(*)
    from tcliente c2
    where c1.provincia = c2.provincia
    and to_char(c1.fecha_alta, 'YYYY') = to_char(c2.fecha_alta, 'YYYY')
    and c1.dni != c2.dni
);