create table PRESTAMO (
    codUsuario  number(5)       NOT NULL,
    tipo        varchar2(10)    NOT NULL,
    codLibro    number(5)       NOT NULL,
    fecha       date            NOT NULL,
    CONSTRAINT CompKey_PRESTAMO PRIMARY KEY (codUsuario, tipo, codLibro, fecha),
    CONSTRAINT FK_PRESTAMO_USUARIO FOREIGN KEY (codUsuario, tipo) REFERENCES USUARIO(codUsuario, tipo),
    CONSTRAINT FK_PRESTAMO_LIBRO FOREIGN KEY (codLibro) REFERENCES LIBRO(codLibro)
)
/

Insert into PRESTAMO values (1, 'HABITUAL', 1, '11/11/2011');