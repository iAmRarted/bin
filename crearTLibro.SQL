create table LIBRO (
    codLibro    number(5)       NOT NULL,
    ISBN        varchar2(17)    NOT NULL    UNIQUE,
    titulo      varchar2(15)    NOT NULL,
    autor       varchar2(15),  
    ano         number(4), 
    CONSTRAINT PK_LIBRO PRIMARY KEY (codLibro)
)
/

Insert into LIBRO values (00001, '978-3-16-148410-0', 'PIPOLAND', 'Áléx', 2014);