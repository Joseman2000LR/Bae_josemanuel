/*crear  la base de datos */
CREATE DATABASE bd_centro ;

/* defino el CHARACTER SET y el COLLATE */

/* CHARACTER es es la forma en que la base de dato guarda internamente
los datos */

/* COLLATE es el conjunto es el conjunto de reglas que se aplica para comparar
caracteres en un charset , es decir indica a la base de datos como debe comparar
los datos */

/*crear tabla */

CREATE table  ALUMNO
(dni_alumno VARCHAR(9)[primary key]
(nombre_alumno VARCHAR(50)
(apellido1_alumno VARCHAR(50)
(apellido2_alumno VARCHAR(50)
(direccion_alumno VARCHAR(200)
(sexo_alumno date (M,F)
(FechaNaciemiento_alumno date));
/* en alumno e puesto primary key en dni por que cada alumo solo tiene un dni
 y son diferentes etodos */

create table CURSO
(codigo_curso int (1,1)[primary key ]
( nombre_curso VARCHAR (50)
(maximoalumno_curso   )[foreign key]
(fechadeinicio_curso date 01-10-2020)
(fechafinal_curso date 30-06-2021)
(horas_curso datetime));
/* en curso puse foreign key a maximoalumno por que coreponde a la tabla
anterior que es alumno  y en codigo del curso le puse primary key por que el
codigo es diferente sienmpre*/

CREATE table PROFESORES
(dni_profesor varchar (9)[primary key ]
(nombre_profesor varchar(50)
(apellido1_profesor varchar(50)
(apellido2_profesor  varchar (50)
(direccion_profesor VARCHAR (200)
(salario_profesor Moneda  )) ;
/* en profesores puse primary key por que en curo le falta algo relacionado
 a curso es una tabla aparte */
