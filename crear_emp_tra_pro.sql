create table EMP_TRA_PRO(
    dni             varchar(9),
    nombreProyecto  varchar2(50),
    CONSTRAINT PK_EMP_TRA_PRO PRIMARY KEY (dni, nombreProyecto),
    CONSTRAINT FK_EMP_TRA_PRO_EMPLE FOREIGN KEY (dni) references EMPLE(dni),
    CONSTRAINT FK_EMP_TRA_PRO_proyecto FOREIGN KEY (nombreProyecto) references PROYECTO(nombreProyecto)
);