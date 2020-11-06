Vamos a modificar las tablas que hemos creado en la práctica 2.1:

1.Crea un nuevo atributo llamado Edad de tipo numérico a la tabla ALUMNOS.
CREATE table  ALUMNO
(Edad int(10)

Añade las siguientes restricciones:

2.Modifica el campo que has creado anteriormente para que la edad del alumno o
alumna esté comprendida entre 14 y 65 años.
SELECT * FROM ALUMNOS WHERE Edad >=14 && <=65 ;
3.Modifica el campo Número de horas del CURSO de manera que solo pueda haber
cursos con 30, 40 o 60 horas.
SELECT * FROM CURSOS WHERE HORAS BETWEEN 30 , 40 AND 60;
4.No podemos añadir un curso si su número máximo de alumnos es inferior a 15.
ALTER TABLE CURSO
ADD CONSTRAINT
5.Elimina la restricción que controla los valores que puede tomar el atributo
Sexo.
DELETE FROM ALUMNOS WHERE SEXO='M % F';
6.Elimina la columna Dirección de la tabla PROFESORES.
ALTER TABLE PROFESORES ADD INDEX (Dirección);
7.Cambia la clave primaria de la tabla PROFESORES por Nombre y Apellidos.
CONSTRAINT PROFESORES PRIMARY KEY (NOMBRE,APLELLIDOS)
8.Renombra la tabla PROFESORES por TUTORES.
RENAME PROFESORES TO TUTUORES ;
9.Elimina la tabla ALUMNOS.
TRUNCATE TABLE alumnos;
10.Crea un usuario con tu nombre y clave BD02 y dale todos los privilegios sobre
la tabla CURSOS.
create user 'jose'@'localhost' identified by 'BD02'
  GRANT ALL PRIVILEGES ON *.* TO 'jose'@'localhost';
  flush PRIVILEGES;
11.Ahora al usuario anterior quítale permisos para modificar o actualizar la
tabla CURSOS.
show GRANT for 'jose'@'%'; /* remover privilegios del usuario*/
revoke all PRIVILEGES , GRANT option from 'jose'@'%';
/* remover privilegios con grant*/
