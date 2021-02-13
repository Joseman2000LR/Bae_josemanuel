-- Genera en este documento la base de datos, las tablas e inserta los datos correspondientes. Recuerda que debes configurar este archivo para que cambie a la base de datos una vez cargada.

CREATE DATABASE IF NOT EXISTS  tienda;
USE tienda

CREATE TABLE FABRICANTES
 (Clave_fabricante INT NOT NULL,
  Nombre VARCHAR(30), PRIMARY KEY (Clave_fabricante));

CREATE TABLE ARTICULOS
    (Clave_articulo INT NOT NULL,
    Nombre VARCHAR(30),
    Precio INT, 
    Clave_fabricante INT,
    PRIMARY KEY (Clave_articulo),
    foreign key(Clave_fabricante) REFERENCES FABRICANTES (Clave_fabricante));

INSERT INTO FABRICANTES VALUES (1, 'Kingston');
INSERT INTO FABRICANTES VALUES (2, 'Adata');
INSERT INTO FABRICANTES VALUES (3, 'Logitech');
INSERT INTO FABRICANTES VALUES (4, 'Lexar');
INSERT INTO FABRICANTES VALUES (5, 'Seagate');

INSERT INTO ARTICULOS VALUES (1, 'Teclado',100,3);
INSERT INTO ARTICULOS VALUES (2, 'Disco duro 300Gb',500,5);
INSERT INTO ARTICULOS VALUES (3, 'Mouse',80,3);
INSERT INTO ARTICULOS VALUES (4, 'Memoria USB',140,4);
INSERT INTO ARTICULOS VALUES (5, 'Memoria RAM',290,1);
INSERT INTO ARTICULOS VALUES (6, 'Disco duro extraible 250Gb',650,5);
INSERT INTO ARTICULOS VALUES (7, 'Memoria USB',279,1);
INSERT INTO ARTICULOS VALUES (8, 'DVD Rom',450,2);
INSERT INTO ARTICULOS VALUES (9, 'CD Rom',200,2);
INSERT INTO ARTICULOS VALUES (10, 'Tarjeta de red', 180 ,3);
