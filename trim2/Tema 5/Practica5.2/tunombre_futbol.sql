-- Empieza creando la base de datos.
CREATE DATABASE IF NOT EXISTS  futbol;
USE futbol

    CREATE TABLE JUGADORES
    (id-jugadores int(3) ,
    nombre varchar(50),
    fecha_nac date,
    demarcacion  varchar(50),
    internacinal  int(3),
    id_equipo int(2))

    CREATE TABLE EQUIPOS
    (id_equipo int(2),
    nombre varchar(50),
    estadio varchar(50),
    aforo int(6),
    ano_fundacion int(4),
    ciudad varchar(50))

    CREATE TABLE PARTIDOS 
   (id_equipo_casa int(2),
    id_equipo_fuera int(2),
    fecha date,
    goles_casa int(2),
    goles_fuera int(2), 
    observaciones varchar(200)) 

    CREATE TABLE GOLES
    (id_equipo_casa int(2),
    id_equipo_fuera int(2),
    minuto int(2),
    id_jugador int(3),
    descripcion  varchar(200))


-- Una vez creada la base de datos resuelve las modicaciones siguientes:
-- Añadir una columna nueva a la tabla PARTIDOS que indique la hora de comienzo del partido.
alter table PARTIDOS 
add comiPartido date ;


--Establecer las claves primarias (destacadas con negreita) correspondientes a cada tabla.
 CREATE TABLE JUGADORES
    ( primary key (id-jugadores int(3)) ,
    nombre varchar(50),
    fecha_nac date,
    demarcacion  varchar(50),
    internacinal  int(3),
 foreign key(EQUIPOS) REFERENCES   id_equipo int(2))

    CREATE TABLE EQUIPOS
    ( primary key (id_equipo int(2)),
    nombre varchar(50),
    estadio varchar(50),
    aforo int(6),
    ano_fundacion int(4),
    ciudad varchar(50))

    CREATE TABLE PARTIDOS 
   (id_equipo_casa int(2),
    id_equipo_fuera int(2),
    fecha date,
    goles_casa int(2),
    goles_fuera int(2), 
    observaciones varchar(200)) 

    CREATE TABLE GOLES
    (id_equipo_casa int(2),
    id_equipo_fuera int(2),
    minuto int(2),
    id_jugador int(3),
    descripcion  varchar(200))

--Establecer las claves foráneas correspondiente en la tabla GOLES
CREATE TABLE GOLES (
  id_equipo_casa int(2),
  id_equipo_fuera int(2),
  minuto int(2),
  id_jugador int(3),
  descripcion varchar(200)
)

-- Cambiar el nombre de la columna ano_fundacion de la tabla EQUIPOS por fundacion.
ALTER TABLE
 EQUIPOS
MODIFY
  COLUMN ano_fundacion fundacion;

--Añadir una columna a la tabla EQUIPOS que almacene el anagrama de dicho equipo.
CREATE TABLE EQUIPOS (
  primary key (id_equipo int(2)),
  nombre varchar(50),
  estadio varchar(50),
  aforo int(6),
  ano_fundacion int(4),
  ciudad varchar(50)
)

--Definir el campo o columna id_equipo en la tabla JUGADORES como clave foránea correspondiente a la clave primaria de la tabla EQUIPOS.


-- Fijar para todas las tablas el tipo de almacenamiento INNODB así como un charset de latin1 y valor collation latin1_spanish_c1


--Renombrar la tabla GOLES a RESULTADOS.
update GOLES set nombre='RESULTADOS';