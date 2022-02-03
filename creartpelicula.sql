create table  TPELICULA (
	codPeli				number(3)		NOT NULL,
	titulo				varchar2(13)	NOT NULL,
	tituloOriginal		varchar2(13),
	pais				varchar2(10),
	ano					number(4),
	CONSTRAINT PK_PELICULA PRIMARY KEY (codPeli)
)
/

Insert into TPELICULA values (001, 'Muertepiscina', 'Deadpool', '`murica', 2016);
COMMIT;