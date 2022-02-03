drop table TPROVINCIA2;

create table TPROVINCIA2 (
	codigo		char(2) 		NOT NULL,
	nombre		varchar2(25) 	NOT NULL,
	total_compra	number(10) 	NOT NULL,
	CONSTRAINT PK_TPROVINCIA2 PRIMARY KEY (CODIGO)
)
/

insert into TPROVINCIA2 values ('HU', 'HUESCA', 1000000);
insert into TPROVINCIA2 values ('Z', 'ZARAGOZA', 600000);
insert into TPROVINCIA2 values ('CC', 'CACERES', 800000);
insert into TPROVINCIA2 values ('B', 'BARCELONA', 200000);
insert into TPROVINCIA2 values ('S', 'SEVILLA', 600000);
insert into TPROVINCIA2 values ('TE', 'TERUEL', 800000);
insert into TPROVINCIA2 values ('LO', 'LOGROÑO', 100000);
insert into TPROVINCIA2 values ('TO', 'TOLEDO', 2000);
COMMIT;
