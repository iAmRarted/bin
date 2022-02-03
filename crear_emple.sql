create table EMPLE(
    dni         varchar2(9),
    nombre      varchar2(20),
    ap1         varchar2(20),
    ap2         varchar2(20),
    categoria   varchar2(30),
    telefono    number(9),
    despacho    varchar2(30),
    CONSTRAINT PK_EMPLE PRIMARY KEY (dni)
);