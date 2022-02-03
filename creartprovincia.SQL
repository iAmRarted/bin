drop table TPROVINCIA;

create table TPROVINCIA (
	codigo		char(2) 		NOT NULL,
	nombre		varchar2(25) 	NOT NULL,
	total_compra	number(10) 	NOT NULL
)
/

insert into TPROVINCIA values ('HU', 'HUESCA', 1000000);
insert into TPROVINCIA values ('Z', 'ZARAGOZA', 600000);
insert into TPROVINCIA values ('CC', 'CACERES', 800000);
insert into TPROVINCIA values ('B', 'BARCELONA', 200000);
insert into TPROVINCIA values ('S', 'SEVILLA', 600000);
insert into TPROVINCIA values ('TE', 'TERUEL', 800000);
insert into TPROVINCIA values ('LO', 'LOGROÑO', 100000);
insert into TPROVINCIA values ('TO', 'TOLEDO', 2000);
COMMIT;
