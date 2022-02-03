create table MAT_PRO(
    nombreMateria   varchar(50),
    nombreProyecto  varchar2(50),
    CONSTRAINT PK_MAT_PRO PRIMARY KEY (nombreMateria, nombreProyecto),
    CONSTRAINT FK_MAT_PRO_materia FOREIGN KEY (nombreMateria) references MATERIA(nombreMateria),
    CONSTRAINT FK_MAT_PRO_proyecto FOREIGN KEY (nombreProyecto) references PROYECTO(nombreProyecto)
);