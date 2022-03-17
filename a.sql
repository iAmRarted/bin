-- create or replace function factorial(x number) return number is
-- BEGIN
-- 	if x=0 then
-- 		return 1;
-- 	else
-- 		return x*factorial(x-1);
-- 	end if;
-- end factorial;
-- /

create or replace function sumatorio(x number) return number is
BEGIN
	if x=0 then
		return 0;
	else
		return x+factorial(x-1);
	end if;
end sumatorio;
/

BEGIN
	dbms_output.put_line(sumatorio(5));
end;
/