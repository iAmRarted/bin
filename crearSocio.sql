drop table socio;

create table SOCIO (
    DNI char(10) PRIMARY KEY,
    nom varchar2(20),
    ap1 varchar2(20),
    ap2 varchar2(20),
    edad number(3) CHECK (edad >= 18),
    fecha_ins date);