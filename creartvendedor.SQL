drop table TVENDEDOR;

create table TVENDEDOR (
	cod_ven		char(3) 		NOT NULL,
	nom_ven		varchar2(25) 	NOT NULL,
	porcen		number(4),
	titulacion	varchar2(10),
	superior		char(3)
)
/

insert into TVENDEDOR values ('002','PEREZ DIRAC A.', 5, 'ELEMENTAL', '001');
insert into TVENDEDOR values ('003', 'SOTO LOIS F.', 10, 'MEDIA','001');
insert into TVENDEDOR values ('004', 'PRADOS GOMEZ R.', 7, 'ELEMENTAL', '003');
insert into TVENDEDOR values ('006', 'LOPEZ MAS C.', 10, 'MEDIA', '003');
insert into TVENDEDOR (COD_VEN, NOM_VEN, PORCEN, TITULACION) values ('001','CORZAN BLASCO M.C.', 10, 'SUPERIOR');
insert into TVENDEDOR (COD_VEN, NOM_VEN, PORCEN, TITULACION) values ('005', 'TORRES PAZ L.', 15, 'SUPERIOR');
COMMIT;
