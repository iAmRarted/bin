-- 1
-- CREATE ROLE c##conectar;
-- grant ALTER SESSION, CREATE CLUSTER, CREATE DATABASE LINK, 
-- CREATE SEQUENCE, CREATE SESSION, CREATE SYNONYM, CREATE TABLE, CREATE VIEW to c##conectar;

-- 4
-- create user c##u1 identified by dw1b;
-- create user c##u2 identified by dw1b;
-- create user c##u3 identified by dw1b;
-- create user c##u4 identified by dw1b;

-- 5
-- grant connect to c##u1;
-- grant connect to c##u2;
-- grant connect to c##u3;
-- grant connect to c##u4;

-- 6
-- grant create table to c##u1;
-- grant create table to c##u2;
-- grant create table to c##u3;
-- grant create table to c##u4;

-- 7
-- grant dba to c##u1;

-- 8
-- create table T1(c1 number(3));

-- 9
-- insert into T1 values(100);
-- insert into T1 values(101);
-- insert into T1 values(102);
-- grant insert, select on T1 to c##u2
-- with grant option;

-- 10
-- grant insert, select on c##u1.T1 to c##u3
-- with grant option;

-- 11
-- SQL> grant insert, select on c##u1.T1 to c##u4;