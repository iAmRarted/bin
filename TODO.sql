create table PROYECTO (
    nombreProyecto  varchar2(50),
    caracter        varchar2(30),
    duracion        varchar2(20),
    CONSTRAINT PK_PROYECTO PRIMARY KEY (nombreProyecto)
);

create table INSTITUCION(
    nombreInstitucion   varchar2(50),
    direccion           varchar2(30),
    contacto            varchar2(30),
    CONSTRAINT PK_INSTITUCION PRIMARY KEY (nombreInstitucion)
);

create table EMPLE(
    dni         varchar2(9),
    nombre      varchar2(20),
    ap1         varchar2(20),
    ap2         varchar2(20),
    categoria   varchar2(30),
    telefono    number(9),
    despacho    varchar2(30),
    CONSTRAINT PK_EMPLE PRIMARY KEY (dni)
);

create table MATERIA (
    nombreMateria   varchar2(50),
    rama            varchar2(30),
    tipo_materia    varchar2(30),
    CONSTRAINT PK_MATERIA PRIMARY KEY (nombreMateria),
	CONSTRAINT CHK_MATERIA CHECK (tipo_materia IN ('E', 'N'))
);

create table ARTICULO (
    numeroArticulo  number(6),
    tituloArticulo  varchar2(50),
    autorArticulo   varchar2(50),
    nombreProyecto  varchar2(50) NOT NULL,
    CONSTRAINT PK_ARTICULO PRIMARY KEY (numeroArticulo),
    CONSTRAINT FK_ARTICULO_proyecto FOREIGN KEY (nombreProyecto) REFERENCES PROYECTO(nombreProyecto)
);

create table INS_PRO (
    nombreInstitucion   varchar2(50),
    nombreProyecto      varchar2(50),
    fecha               date,
    cantidad            number(10),
    CONSTRAINT PK_INS_PRO PRIMARY KEY (nombreInstitucion, nombreProyecto, fecha),
    CONSTRAINT FK_INS_PRO_institucion FOREIGN KEY (nombreInstitucion) references INSTITUCION(nombreInstitucion),
    CONSTRAINT FK_INS_PRO_proyecto FOREIGN KEY (nombreProyecto) references PROYECTO(nombreProyecto)
);

create table EMP_EMP(
    dni_supervisado varchar2(9),
    dni_supervisor  varchar2(9) NOT NULL,
    CONSTRAINT PK_EMP_EMP PRIMARY KEY (dni_supervisado),
    CONSTRAINT FK_EMP_EMP_supervisado FOREIGN KEY (dni_supervisado) references EMPLE(dni),
    CONSTRAINT FK_EMP_EMP_supervisor FOREIGN KEY (dni_supervisor) references EMPLE(dni),
    CONSTRAINT CHK_EMP_EMP_iguales CHECK (dni_supervisado != dni_supervisor)
);

create table EMP_TRA_PRO(
    dni             varchar(9),
    nombreProyecto  varchar2(50),
    CONSTRAINT PK_EMP_TRA_PRO PRIMARY KEY (dni, nombreProyecto),
    CONSTRAINT FK_EMP_TRA_PRO_EMPLE FOREIGN KEY (dni) references EMPLE(dni),
    CONSTRAINT FK_EMP_TRA_PRO_proyecto FOREIGN KEY (nombreProyecto) references PROYECTO(nombreProyecto)
);

create table EMP_INV_PRO(
    dni             varchar(9),
    nombreProyecto  varchar2(50),
    CONSTRAINT PK_EMP_INV_PRO PRIMARY KEY (dni, nombreProyecto),
    CONSTRAINT FK_EMP_INV_PRO_EMPLE FOREIGN KEY (dni) references EMPLE(dni),
    CONSTRAINT FK_EMP_INV_PRO_proyecto FOREIGN KEY (nombreProyecto) references PROYECTO(nombreProyecto)
);

create table MATERIA_ESPECIAL(
    nombreMateria   varchar(30),
    resol_Unesco    varchar2(30),
    fecha           date,
    CONSTRAINT PK_MATERIA_ESPECIAL PRIMARY KEY (nombreMateria),
    CONSTRAINT FK_MATERIA_ESPECIAL FOREIGN KEY (nombreMateria) references MATERIA(nombreMateria)
);

create table MATERIA_NO_ESPECIAL(
    nombreMateria   varchar(30),
    ambito          varchar2(30),
    categoria       varchar2(30),
    CONSTRAINT PK_MATERIA_NO_ESPECIAL PRIMARY KEY (nombreMateria),
    CONSTRAINT FK_MATERIA_NO_ESPECIAL FOREIGN KEY (nombreMateria) references MATERIA(nombreMateria)
);

create table MAT_ART(
    nombreMateria   varchar(50),
    numeroArticulo  number(6),
    CONSTRAINT PK_MAT_ART PRIMARY KEY (nombreMateria, numeroArticulo),
    CONSTRAINT FK_MAT_ART_materia FOREIGN KEY (nombreMateria) references MATERIA(nombreMateria),
    CONSTRAINT FK_MAT_ART_articulo FOREIGN KEY (numeroArticulo) references ARTICULO(numeroArticulo)
);

create table MAT_PRO(
    nombreMateria   varchar(50),
    nombreProyecto  varchar2(50),
    CONSTRAINT PK_MAT_PRO PRIMARY KEY (nombreMateria, nombreProyecto),
    CONSTRAINT FK_MAT_PRO_materia FOREIGN KEY (nombreMateria) references MATERIA(nombreMateria),
    CONSTRAINT FK_MAT_PRO_proyecto FOREIGN KEY (nombreProyecto) references PROYECTO(nombreProyecto)
);

-- Eliminar tablas

DROP TABLE MAT_PRO;
DROP TABLE MAT_ART;
DROP TABLE MATERIA_NO_ESPECIAL;
DROP TABLE MATERIA_ESPECIAL;
DROP TABLE EMP_INV_PRO;
DROP TABLE EMP_TRA_PRO;
DROP TABLE EMP_EMP;
DROP TABLE INS_PRO;
DROP TABLE ARTICULO;
DROP TABLE MATERIA;
DROP TABLE EMPLE;
DROP TABLE INSTITUCION;
DROP TABLE PROYECTO;

-- Crear tablas

@crear_proyecto
@crear_institucion
@crear_emple
@crear_materia
@crear_articulo
@crear_ins_pro
@crear_emp_emp
@crear_emp_tra_pro
@crear_emp_inv_pro
@crear_materia_especial
@crear_materia_no_especial
@crear_mat_art
@crear_mat_pro

-- Insertar tuplas

@tuplas