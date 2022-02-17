create view clienprov2 as
select nombre
from tprovincia
where 1 < (
    select count(*)
    from tprovincia
    where exists(
        select *
        from tcliente
        where provincia = codigo
    )
);