create table INS_PRO (
    nombreInstitucion   varchar2(50),
    nombreProyecto      varchar2(50),
    fecha               date,
    cantidad            number(10),
    CONSTRAINT PK_INS_PRO PRIMARY KEY (nombreInstitucion, nombreProyecto, fecha),
    CONSTRAINT FK_INS_PRO_institucion FOREIGN KEY (nombreInstitucion) references INSTITUCION(nombreInstitucion),
    CONSTRAINT FK_INS_PRO_proyecto FOREIGN KEY (nombreProyecto) references PROYECTO(nombreProyecto)
);