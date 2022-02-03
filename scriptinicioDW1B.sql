create user c##scott identified by tiger default tablespace users temporary tablespace temp quota 50m on users;
create role c##conecta;
grant alter session, create cluster, create database link, create sequence, create session, create synonym, create table, create view to c##conecta;
grant c##conecta to c##scott;
conn c##scott/tiger
@creartcliente
@creartvendedor
@creartprovincia
@creartarticulo
@creartventa
@crearBBDD2021
