select substr(nombre, 1, instr(nombre, ' '))
from tcliente
where exists(
    select *
    from tprovincia
    where provincia = codigo
    and 2 <= (
        select count(*)
        from tcliente
        where provincia = codigo
        and tipo = 'AA'
    )
    and 3 = (
        select count(*)
        from tcliente
        where provincia = codigo
        having sum(compras) > 200000
    )
);

select substr(nombre, 1, instr(nombre, ' '))
from tcliente
where 
group by provincia