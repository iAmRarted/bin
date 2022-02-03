create table ARTICULO (
    numeroArticulo  number(6),
    tituloArticulo  varchar2(50),
    autorArticulo   varchar2(50),
    nombreProyecto  varchar2(50) NOT NULL,
    CONSTRAINT PK_ARTICULO PRIMARY KEY (numeroArticulo),
    CONSTRAINT FK_ARTICULO_proyecto FOREIGN KEY (nombreProyecto) REFERENCES PROYECTO(nombreProyecto)
);