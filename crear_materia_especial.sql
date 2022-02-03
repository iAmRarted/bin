create table MATERIA_ESPECIAL(
    nombreMateria   varchar(30),
    resol_Unesco    varchar2(30),
    fecha           date,
    CONSTRAINT PK_MATERIA_ESPECIAL PRIMARY KEY (nombreMateria),
    CONSTRAINT FK_MATERIA_ESPECIAL FOREIGN KEY (nombreMateria) references MATERIA(nombreMateria)
);