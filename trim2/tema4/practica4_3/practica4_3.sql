-- Se dispone de la "personas" con los datos de los empleados que trabajan en una seir de hospitales. Realiza las siguientes consultas en SQL.

-- 1. Mostrar todos los datos de todas las personas.
SELECT * From personas ;

-- 2. Obtén el DNI, apellidos y función de todas las personas.
SELECT dni , apellidos ,funcion From personas ;

-- 3. Mostrar los apellidos de las personas que vivan en LORCA.
 SELECT  apellidos  From personas where localidad = 'LORCA' ;

-- 4. Mostrar los apellidos de las personas que vivan en MURCIA o LORCA
SELECT  apellidos  From personas where localidad in ('LORCA','MURCIA') ;

-- 5. Seleccionar los datos de aquellas personas que vivan en MURCIA y tengan un salario superior a los 1500 euros.
 SELECT  apellidos  From personas where  salario >' 1500' and localidad = 'MURCIA' ;

-- 6. Mostrar los datos de las personas que vivan en MURCIA, tengan un salario superior a los 1500 euros y sean DIRECTORES.
SELECT  apellidos , funcion From personas where  salario >' 1500' and localidad = 'MURCIA' and funcion = 'DIRECTOR'  ;

-- 7. Mostrar los datos de las personas cuya función sea MÉDICO ordenados por apellidos descendentemente.
SELECT * FROM personas order by apellidos desc  ;

-- 8. Mostrar los datos de todas las localidades que hay en la tabla personas sin repeticiones (debes emplear la cláusula DISTINCT)
SELECT distinct localidad FROM personas   ;

-- 9. Mostrar los datos de las personas que tengan un salario superior a 1500 euros y sean médicos. Ordenar la salida por salario descendentemente.
Select*from personas where salario>1500 and function=’MEDICO’ order by salario;

-- 10. Seleccionar aquellas personas cuyo apellido comience por M.
SELECT * From personas  WHERE  apellidos like 'M%' ;


-- 11. Mostrar los datos de las personas que tengan una M en el apellido y cuya función sea CONSERJE.
Select *from personas where apellidos like ‘%M% and function=’CONSERJE’;

-- 12. Mostrar aquellas personas que tengan un salario entre 1500 y 2000 euros.
SELECT * From personas where salario  between 1500 and 2000  ;

-- 13. Seleccionar los datos de aquellas personas cuya función sea MÉDICO o DIRECTOR (utilizar el operador IN)
Select * from personas where función in (‘MEDICO’,’DIRECTOR’);

-- 14. Obtener los datos de aquellas personas cuya función no sea CONSERJE (utilizar el operador NOT IN) y tengan un salario superior a los 1500 euros, ordenados por apellido descendentemente.
Select*from personas where función not in (‘CONSERJE’)and salario>1500 order by apellidos desc;

-- 15. Mostrar los datos de las personas que sean de MURCIA o CARTAGENA y que pertenezcan al hospital número 1.
Select*from personas where localidad IN('MURCIA','CARTAGENA');

-- 16. Obtén los apellidos en mayúsculas de las personas que trabajen en el hospital número 1.
Select upper(apellidos)from personas where cod_hospital=1;

-- 17. Con una consulta devuelve los apellidos de todas las personas. Al lado debe aparecer la longitud de cada apellido.
Select apellidos, length(apellidos)from personas;

-- 18. Obtener los apellidos y localidad en minúscula de todas aquellas personas que no trabajen en el hospital número 1.
select Apellido,lower(localidad) from personas where cod_hospital not in (1);

-- 19. Obtener los datos de las personas que trabajen en los hospitales 1 ó 2 y tengan un salario superior a 1500 euros.
select * from personas where cod_hospital in (1,2) and salario>1500;

-- 20. Visualizar los datos de aquellas personas que no trabajen en el hospital número 2 y que sean de MURCIA.
select * from personas where cod_hospital not in (2) and localidad='Murcia';
