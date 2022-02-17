select *
from tvendedor
where exists(
    select *
    from tcliente
    where cod_ven = vendedor
    and exists(
        select *
        from tventa
        where dni = cliente
        having count(distinct(articulo)) = (
            select max(count(distinct(articulo)))
            from tventa
            group by cliente
        )
    )
);