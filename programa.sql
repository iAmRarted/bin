-- cliente que mas ventas ha hecho

-- select *
-- from tcliente
-- where exists(
--     select *
--     from tventa
--     where cliente = dni
--     and cantidad = (
--         select max(cantidad)
--         from tventa
--     )
-- );


-- select *
-- from tcliente
-- where exists (
--     select *
--     from tventa
--     where dni = cliente
--     having count(articulo) = (
--         select max(distinct(count(articulo)))
--         from tventa
--         group by cliente));


-- articulo que mas ha vendido

-- select * 
-- from tarticulo
-- where exists(
--     select *
--     from tventa
--     where cod_art = articulo
--     having count(articulo) = (
--         select max(count(articulo))
--         from tventa
--         group by articulo));

-- select *
-- from departamento
-- where not exists(
--     select *
--     from empleado e1
--     where exists(
--         select *
--         from empleado e2
--         where e1.num_emp =e2.num_sup
--     )
--     and num_dep = num_depto
-- );

-- select *
-- from empleado
-- where exists(
--     select *
--     from departamento
--     where not exists(
--         select *
--         from empleado e1
--         where exists(
--             select *
--             from empleado e2
--             where e1.num_emp =e2.num_sup
--         )
--         and num_dep = num_depto
--     )
--     and num_dep = num_depto
-- -- );

-- select *
-- from empleado e1
-- where not exists(
--     select *
--     from empleado e2
--     where e1.num_emp =e2.num_sup
--     and e1.num_dep = e2.num_dep
-- );

-- select *
-- from empleado e1
-- where not exists(
--     select *
--     from empleado e2
--     where exists(
--         select *
--         from empleado e3
--         where e2.num_emp =e3.num_sup
--     )
--     and e1.num_dep = e2.num_dep
-- );


-- select num_depto, nombre
-- from departamento
-- where exists(
--     select *
--     from empleado
--     where num_dep = num_depto
--     group by puesto
--     having 2 >= (
--         select count(*)
--         from empleado
--         where puesto = 'ANALISTA'
--     )
-- );


-- select *
-- from departamento
-- where exists(
--     select *
--     from empleado, grado
--     where num_dep = num_depto
--     and grado = 2
--     and salario between salario_min and salario_max
--     having count(*) = (
--         select min(count(*))
--         from empleado, grado
--         where grado = 2
--         and salario between salario_min and salario_max
--         group by num_dep));

-- select nombre, num_depto
-- from departamento
-- where not exists(
--     select *
--     from empleado
--     where num_dep = num_depto
--     and puesto = 'ANALISTA'
--     having count(*) > 2);


