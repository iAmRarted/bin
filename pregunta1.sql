select sum(cantidad)
from tventa
group by articulo
having 2 < count(distinct(cliente));