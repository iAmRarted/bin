create table  TALQUILER (
	codSocio	number(5)		NOT NULL,
	tipo		varchar2(10)	NOT NULL,
	codPeli		number(3)		NOT NULL,
	fechaAlq	date			NOT NULL,
	CONSTRAINT CompKey_TALQUILER PRIMARY KEY (codSocio, tipo, codPeli, fechaAlq),
	CONSTRAINT CompFK_TALQUILER_TSOCIO FOREIGN KEY (codSocio, tipo) REFERENCES TSOCIO(codSocio, tipo),
	CONSTRAINT FK_TALQUILER_TPELICULA FOREIGN KEY (codPeli) REFERENCES TPELICULA(codPeli)
)
/

Insert into TALQUILER values (001, 'VIP', 001, '14/07/2014');
COMMIT;