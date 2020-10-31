/*crear  la base de datos */
CREATE DATABASE bd_centro ;

/* definicion de  CHARACTER SET y el COLLATE */

/* CHARACTER es es la forma en que la base de dato guarda internamente
los datos */

/* COLLATE es el conjunto  de reglas que se aplica para comparar
caracteres , es decir indica a la base de datos como debe comparar los datos */

/*crear tabla */

CREATE table  ALUMNO
(dni_alumno VARCHAR(9)[PRIMARY KEY],
(nombre_alumno VARCHAR(10),
(apellido1_alumno VARCHAR(15),
(apellido2_alumno VARCHAR(15),
(direccion_alumno VARCHAR(30),
(sexo_alumno),
(FechaNaciemiento_alumno date),
(curso varchar (50)[UNIQUE],
check (sexo_alumno in ('masculino', 'femenino'))
/* sexo solo puede ver solo 2 opciones masculino (m) y femenino (f)*/
);
/* en LA TABLA  alumno  puese primary key en dni por que cada alumo solo tiene
 un dni y son diferentes en todos alumno  */

 CREATE table PROFESORES
 (dni_profesor varchar (9)[PRIMARY KEY ],
 (nombre_profesor varchar(10)[UNIQUE],
 (apellido1_profesor varchar(15),
 (apellido2_profesor  varchar (15),
 (direccion_profesor VARCHAR (30),
 (salario_profesor Moneda )
 [not null]
 ) ;
 /* en profesores puse primary key por que  cada profesor tiene un dni y
 son diferentes en todos los profesores*/

create table CURSO
(codigo_curso int (5)[primary key ],
(nombre_curso VARCHAR (10)[UNIQUE],
(maximoalumno_curso REFERENCES ALUMNO )[foreign key],/*TABLA DE ALUMNO*/
(fechadeinicio_curso date ),
(fechafinal_curso date ),
(horas_curso datetime)[UNIQUE],
(dni_profesor VARCHAR(9),REFERENCES dni_profesor[foreign key],/*tabla de profesores */
check (fechadeinicio_curso<fechafinal_curso)/* la fechadeinicio_curso no
puede ser mas pequeña que fechafinal_curso */
);
/* en curso puse foreign key a maximoalumno por que correponde a la tabla
alumno  en codigo del curso le puse primary key por que el codigo es diferente
sienmpre y en dni_profesor puse foreign key por que hace referencia
a la tabla profesor */

CREATE DATABASE bd_centro ;user
