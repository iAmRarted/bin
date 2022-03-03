DECLARE 
    nota number(4):=&nota;
    asignatura varchar2(20):='&asignatura';
BEGIN
    if nota < 0 or nota > 10 then
        dbms_output.put_line('ERROR, NOTA INCORRECTA');
    elsif nota < 5 then
        dbms_output.put_line('Has sacado INSUFICIENTE en '||asignatura);
    elsif nota < 6 then
        dbms_output.put_line('Has sacado SUFICIENTE en '||asignatura);
    elsif nota < 7 then
        dbms_output.put_line('Has sacado BIEN en '||asignatura);
    elsif nota < 9 then
        dbms_output.put_line('Has sacado NOTABLE en '||asignatura);
    else
        dbms_output.put_line('Has sacado SOBRESALIENTE en '||asignatura);
    end if;
END;
/