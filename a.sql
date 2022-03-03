DECLARE 
    numro number(4):=&numero;
BEGIN
    if(numro mod 2) = 0 then
        dbms_output.put_line('El numero '||numro||' es par');
    else
        dbms_output.put_line('El numero '||numro||' es impar');
    end if;
END;
/