select nombre, provincia
from tcliente a
where exists(
    select *
    from tcliente b
    where a.provincia = b.provincia
    having count(*) > 2
)

select nombre, provincia
from tcliente a
where 1 < (
    select count(*)
    from tcliente b
    where a.provincia = b.provincia
);