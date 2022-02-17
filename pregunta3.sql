select *
from tvendedor
where exists(
    select *
    from tcliente
    where vendedor = cod_ven
    and not exists(
        select *
        from tprovincia
        where provincia = codigo
    )
)
and not exists(
    select *
    from tcliente
    where vendedor = cod_ven
    and exists(
        select *
        from tprovincia
        where provincia = codigo
    )
);