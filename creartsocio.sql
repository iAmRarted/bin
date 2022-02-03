create table  TSOCIO (
	codSocio	number(5)		NOT NULL,
	tipo		varchar2(10)	NOT NULL,
	nombre		varchar2(25)	NOT NULL,
	telefono	varchar2(13),
	numPelis	number(3),
	CONSTRAINT CompKey_TSOCIO PRIMARY KEY (codSocio, tipo),
	CONSTRAINT chk_Tipo CHECK (tipo IN ('VIP', 'PREFERENTE', 'NORMAL')),
	CONSTRAINT chk_numPelis CHECK (numPelis>0)
)
/

Insert into TSOCIO values (001, 'VIP', 'Ryan Reynolds', '666666666', 014);
COMMIT;