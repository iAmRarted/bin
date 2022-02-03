create table EMP_EMP(
    dni_supervisado varchar2(9),
    dni_supervisor  varchar2(9) NOT NULL,
    CONSTRAINT PK_EMP_EMP PRIMARY KEY (dni_supervisado),
    CONSTRAINT FK_EMP_EMP_supervisado FOREIGN KEY (dni_supervisado) references EMPLE(dni),
    CONSTRAINT FK_EMP_EMP_supervisor FOREIGN KEY (dni_supervisor) references EMPLE(dni),
    CONSTRAINT CHK_EMP_EMP_iguales CHECK (dni_supervisado != dni_supervisor)
);