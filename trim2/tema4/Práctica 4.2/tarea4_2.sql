
-- Realizar las siguientes consultas:

--1 Mostrar el apellido, oficio y número de departamento de cada empleado.
SELECT apellido , oficio , dept_no From emple ;

--2 Mostrar el número, nombre y localización de cada departamento.

SELECT dept_no , loc , dnombre From depart ;
--3 Mostrar todos los datos de todos los empleados.
SELECT * From emple ;

--4 Datos de los empleados ordenados por apellidos.
SELECT * From emple 
    -> ORDER BY apellido ;

--5 Datos de los empleados ordenados por número de departamento descendentemente.
SELECT * From emple  ORDER BY dept_no DESC;


--6 Datos de los empleados ordenados por número de departamento descendentemente y dentro de cada departamento ordenados por apellido ascendentemente.
SELECT * From emple  ORDER BY dept_no  DESC , apellido ASC ;

--8 Mostrar los datos de los empleados cuyo salario sea mayor que 2000000. 
SELECT * From emple WHERE salario > 2000000  ORDER BY salario ;
niguno de los empleados tiene salario  mayor que 2000000

--9 Mostrar los datos de los empleados cuyo oficio sea ʻANALISTAʼ.
 SELECT * From emple WHERE oficio = 'ANALISTA'  ORDER BY oficio ;

   
--10 Seleccionar el apellido y oficio de los empleados del departamento número 20.
SELECT * From emple WHERE dept_no='20'  ORDER BY dept_no , apellido , oficio  ;

--11 Mostrar todos los datos de los empleados ordenados por apellido.
SELECT * From emple    ORDER BY  apellido  ;


--12 Seleccionar los empleados cuyo oficio sea ʻVENDEDORʼ. Mostrar los datos ordenados por apellido.
SELECT * From emple WHERE oficio = 'VENDEDOR'  ORDER BY apellido  ;

--13 Mostrar los empleados cuyo departamento sea 10 y cuyo oficio sea ʻANALISTAʼ. Ordenar el resultado por apellido.
SELECT * From emple WHERE oficio = 'ANALISTA'and dept_no = 10  ORDER BY apellido  ;


--14 Mostrar los empleados que tengan un salario mayor que 200000 o que pertenezcan al departamento número 20.
SELECT * From emple WHERE salario < 200000   and dept_no = 20  ORDER BY apellido  ;

--15 Ordenar los empleados por oficio, y dentro de oficio por apellido.
SELECT * From emple   ORDER BY oficio , apellido ;

--16 Seleccionar de la tabla EMPLE los empleados cuyo apellido empiece por ʻAʼ.
SELECT * From emple WHERE  apellido like 'A%' ;


--17 Seleccionar de la tabla EMPLE los empleados cuyo apellido termine por ʻZʼ.
SELECT * From emple WHERE  apellido like '%Z' ;


--18 Seleccionar de la tabla EMPLE aquellas filas cuyo APELLIDO empiece por ʻAʼ y el OFICIO tenga una ʻEʼ en cualquier posición.
SELECT * From emple WHERE  apellido like '%Z' AND oficio like   '%E%'  ;

--19 Seleccionar los empleados cuyo salario esté entre 100000 y 200000. Utilizar el operador BETWEEN.
SELECT * From emple WHERE  salario between '100000' and '200000'  ;

--20 Obtener los empleados cuyo oficio sea ʻVENDEDORʼ y tengan una comisión superior a 100000.
SELECT * From emple WHERE oficio='VENDEDOR' and comision > '100000'  ;

--21 Seleccionar los datos de los empleados ordenados por número de departamento, y dentro de cada departamento ordenados por apellido.
SELECT * From emple   ORDER BY dept_no  , apellido ;


--22 Número y apellidos de los empleados cuyo apellido termine por ʻZʼ y tengan un salario superior a 300000.
SELECT * From emple WHERE  apellido like '%Z' AND salario >300000  ;


--23. Datos de los departamentos cuya localización empiece por ʻBʼ.

 SELECT * From depart WHERE  loc  like 'B%'   ;

--24. Datos de los empleados cuyo oficio sea ʻEMPLEADOʼ, tengan un salario superior a 100000 y pertenezcan al departamento número 10.
SELECT * From emple WHERE oficio='EMPLEADO' and salario > '100000' and dept_no =10  ;

--25. Mostrar los apellidos de los empleados que no tengan comisión.
SELECT * From emple WHERE   comision is null ;


--26. Mostrar los apellidos de los empleados que no tengan comisión y cuyo apellido empiece por ʻJʼ.
SELECT * From emple WHERE   comision is null and apellido like 'J%'  ;


--27. Mostrar los apellidos de los empleados cuyo oficio sea ʻVENDEDORʼ, ʻANALISTAʼ o ʻEMPLEADOʼ.

SELECT * From emple WHERE oficio IN('VENDEDOR' AND 'ANALISTA'AND'EMPLEADO');
 
--28. Mostrar los apellidos de los empleados cuyo oficio no sea ni ʻANALISTAʼ ni ʻEMPLEADOʼ, y además tengan un salario mayor de 200000.
 SELECT apellido From emple  where salario  <200000 and oficio in( 'ANALISTA ','EMPLEADO') ;

--29 Seleccionar de la tabla EMPLE los empleados cuyo salario esté entre 2000000 y 3000000 (utilizar BETWEEN).
SELECT * From emple WHERE  salario between  '200000' and '3000000'  ;

--30 Seleccionar el apellido, salario y número de departamento de los empleados cuyo salario sea mayor que 200000 en los departamentos 10 ó 30.
SELECT apellido, salario ,dept_no From emple  where salario  <200000 and dept_no in( '10 ','30') ;