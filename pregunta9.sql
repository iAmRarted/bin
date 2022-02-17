create view vcli as
select *
from tcliente
where exists(
    select *
    from tvendedor v1
    where v1.cod_ven = vendedor
    and exists(
        select *
        from tvendedor v2
        where v1.cod_ven = v2.superior
        and exists(
            select *
            from tvendedor v3
            where v2.cod_ven = v3.superior
        )
    )
)
and provincia like '% ';
-- and check condition;