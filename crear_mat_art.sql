create table MAT_ART(
    nombreMateria   varchar(50),
    numeroArticulo  number(6),
    CONSTRAINT PK_MAT_ART PRIMARY KEY (nombreMateria, numeroArticulo),
    CONSTRAINT FK_MAT_ART_materia FOREIGN KEY (nombreMateria) references MATERIA(nombreMateria),
    CONSTRAINT FK_MAT_ART_articulo FOREIGN KEY (numeroArticulo) references ARTICULO(numeroArticulo)
);