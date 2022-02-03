create table MATERIA_NO_ESPECIAL(
    nombreMateria   varchar(30),
    ambito          varchar2(30),
    categoria       varchar2(30),
    CONSTRAINT PK_MATERIA_NO_ESPECIAL PRIMARY KEY (nombreMateria),
    CONSTRAINT FK_MATERIA_NO_ESPECIAL FOREIGN KEY (nombreMateria) references MATERIA(nombreMateria)
);