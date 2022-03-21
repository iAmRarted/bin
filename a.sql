-- create or replace function factorial(x number) return number is
-- BEGIN
-- 	if x=0 then
-- 		return 1;
-- 	else
-- 		return x*factorial(x-1);
-- 	end if;
-- end factorial;
-- /

-- create or replace function sumatorio(x number) return number is
-- BEGIN
-- 	if x=0 then
-- 		return 0;
-- 	else
-- 		return x+factorial(x-1);
-- 	end if;
-- end sumatorio;
-- /

-- BEGIN
-- 	dbms_output.put_line(sumatorio(5));
-- end;
-- /

-- create or replace procedure suma2Numeros(num1 number, num2 number) is
-- BEGIN
-- 	dbms_output.put_line(num1 + num2);
-- end suma2Numeros;
-- /

-- create or replace procedure cadenaAlReves(cadena varchar2) is
-- 	resultado varchar2(50):= '';
-- BEGIN
-- 	for i in reverse 1..length(cadena) loop
-- 		resultado:= resultado || substr(cadena, i, 1);
-- 	end loop;
-- 	dbms_output.put_line(resultado);
-- end cadenaAlReves;
-- /

-- create or replace function anio (fecha date) return number is
--     an number(4);
-- BEGIN
--     an:=to_number(to_char(fecha,'yyyy'));
--     return an;
-- end anio;
-- /

-- BEGIN
--     dbms_output.put_line(anio(sysdate));
-- end;
-- /