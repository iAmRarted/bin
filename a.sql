select nombre, provincia
from tcliente a
where exists(
    select *
    from tcliente b
    where a.provincia = b.provincia
    having count(*) > 2);