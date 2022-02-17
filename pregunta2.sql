select upper(substr(nom_ven, 1, instr(nom_ven, ' '))) || upper(substr(nom_ven, instr(nom_ven, ' ') + 1, 1)) || lower(substr(nom_ven, instr(nom_ven, ' ') + 2, instr(nom_ven, ' ', 1, 2) - instr(nom_ven, ' ', 1, 1) - 1)) || upper(substr(nom_ven, instr(nom_ven, ' ', 1, 2) + 1)) "Vendedor", 
decode(provincia, 'HU', c1.nombre) "HUESCA",
decode(provincia, 'Z ', c1.nombre) "ZARAGOZA",
decode(provincia, 'HU', null, 'Z ', null, p1.nombre) "RESTO"
from tvendedor, tcliente c1, tprovincia p1
where vendedor = cod_ven
and provincia = codigo(+)
order by vendedor;