create table MATERIA (
    nombreMateria   varchar2(50),
    rama            varchar2(30),
    tipo_materia    varchar2(30),
    CONSTRAINT PK_MATERIA PRIMARY KEY (nombreMateria),
	CONSTRAINT CHK_MATERIA CHECK (tipo_materia IN ('E', 'N'))
);