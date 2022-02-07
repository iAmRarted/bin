select nom_ven
from tvendedor
where exists (
    select *
    from tcliente c1
    where cod_ven = c1.vendedor
    and not exists(
        select *
        from tcliente c2
        where c1.provincia 
    )
)