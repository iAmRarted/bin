create table EMPLEADO(
    dni         varchar2(9),
    nombre      varchar2(15),
    ap1         varchar2(15),
    ap2         varchar2(15),
    categoria   varchar2(15),
    telefono    number(9),
    despacho    varchar2(10),
    CONSTRAINT PK_EMPLEADO PRIMARY KEY (dni)
);