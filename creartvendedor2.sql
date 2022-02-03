drop table TVENDEDOR2;

create table TVENDEDOR2 (
	cod_ven		char(3) 		NOT NULL,
	nom_ven		varchar2(25) 	NOT NULL,
	porcen		number(4),
	titulacion	varchar2(10),
	superior		char(3),
	CONSTRAINT PK_TVENDEDOR2 PRIMARY KEY (COD_VEN),
	CONSTRAINT FK_TVENDEDOR2_TVENDEDOR2 FOREIGN KEY (SUPERIOR) REFERENCES TVENDEDOR2 (COD_VEN)
)
/

insert into TVENDEDOR2 (COD_VEN, NOM_VEN, PORCEN, TITULACION) values ('001','CORZAN BLASCO M.C.', 10, 'SUPERIOR');
insert into TVENDEDOR2 values ('002','PEREZ DIRAC A.', 5, 'ELEMENTAL', '001');
insert into TVENDEDOR2 values ('003', 'SOTO LOIS F.', 10, 'MEDIA','001');
insert into TVENDEDOR2 values ('004', 'PRADOS GOMEZ R.', 7, 'ELEMENTAL', '003');
insert into TVENDEDOR2 values ('006', 'LOPEZ MAS C.', 10, 'MEDIA', '003');
insert into TVENDEDOR2 (COD_VEN, NOM_VEN, PORCEN, TITULACION) values ('005', 'TORRES PAZ L.', 15, 'SUPERIOR');
COMMIT;
