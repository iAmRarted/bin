create table USUARIO (
    codUsuario  number(5)       NOT NULL,
    tipo        varchar2(10)    DEFAULT 'HABITUAL',
    nombre      varchar2(15)    NOT NULL,
    tlf         varchar2(13),
    cantLibro   number(5),
    CONSTRAINT CompKey_USUARIO PRIMARY KEY (codUsuario, tipo),
    CONSTRAINT Chk_TIPO_USUARIO CHECK (tipo IN('HABITUAL', 'ESPORÁDICO')),
    CONSTRAINT Chk_USUARIO CHECK (cantLibro>=0)
)
/

Insert into USUARIO (codUsuario, nombre, tlf, cantLibro) values (1, 'PIPO', '666666666', 42069);