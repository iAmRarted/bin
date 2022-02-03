create table SOCIO (
    DNI varchar(10) NOT NULL PRIMARY KEY,
    nom varchar(10),
    ap1 varchar(10),
    ap2 varchar(10),
    edad number(3) CHECK (edad >= 18),
    fecha_ins date);