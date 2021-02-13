--a) Obtener todos los datos de los productos de la tienda.

 SELECT * FROM ARTICULOS;

--b) Obtener los nombres de los productos de la tienda.

SELECT nombre FROM ARTICULOS;

--c) Obtener los nombres y precio de los productos de la tienda.

SELECT nombre, precio FROM ARTICULOS;

--d) Obtener los nombres de los artículos sin repeticiones.

SELECT DISTINCT nombre FROM ARTICULOS;

--e) Obtener todos los datos del artículo cuya clave de producto es ‘5’.

SELECT * FROM ARTICULOS WHERE clave_articulo=5;

--f) Obtener todos los datos del artículo cuyo nombre del producto es ‘’Teclado”.

SELECT * FROM ARTICULOS WHERE nombre='Teclado';

--g) Obtener todos los datos de la Memoria RAM y memorias USB.

SELECT * FROM ARTICULOS WHERE nombre='Memoria RAM' OR nombre='memorias USB';

--h) Obtener todos los datos de los artículos que empiezan con ‘M’.

SELECT * FROM ARTICULOS WHERE nombre LIKE='M%';

--i) Obtener el nombre de los productos donde el precio sea 100.

SELECT nombre FROM ARTICULOS WHERE precio=100;

--j) Obtener el nombre de los productos donde el precio sea mayor a 200.

SELECT nombre FROM ARTICULOS WHERE precio>200;

--k) Obtener todos los datos de los artículos cuyo precio este entre 100 y 350.

SELECT nombre FROM ARTICULOS WHERE precio BETWEEN 100 AND 350;

--l) Obtener el precio medio de todos los productos.

SELECT AVG(Precio) FROM ARTICULOS;

--m) Obtener el precio medio de los artículos cuyo código de fabricante sea 2.

SELECT AVG(Precio) FROM ARTICULOS WHERE clave_fabricante=2;

--n) Obtener el nombre y precio de los artículos ordenados por Nombre.

SELECT nombre, precio FROM ARTICULOS ORDER BY nombre ASC;

--o) Obtener todos los datos de los productos ordenados descendentemente por Precio.

SELECT * FROM ARTICULOS ORDER BY precio DESC;

--p) Obtener el nombre y precio de los artículos cuyo precio sea mayor a 250 y ordenarlos descendentemente por precio y luego ascendentemente por nombre.

SELECT nombre, precio FROM ARTICULOS WHERE precio>250 ORDER BY precio DESC, nombre ASC;

--q) Obtener un listado completo de los productos, incluyendo por cada articulo los datos del articulo y del fabricante.
SELECT * FROM FABRICANTES, ARTICULOS WHERE ARTICULOS.Clave_frabricante=FABRICANTES.Clave_fabricante ;


--r) Obtener la clave de producto, nombre del producto y nombre del fabricante de todos los productos en venta.
SELECT ARTICULOS.Clave_articulo, ARTICULOS.Nombre,FRABRICANTES.Nombre FROM FABRICANTES, ARTICULOS WHERE ARTICULOS.Clave_frabricante=FABRICANTES.Clave_fabricante ;


--s) Obtener el nombre y precio de los artículos donde el fabricante sea Logitech ordenarlos alfabéticamente por nombre del producto.
SELECT ARTICULOS.Precio, ARTICULOS.Nombre, FROM FABRICANTES WHERE FABRICANTE.Nombre='Logitech' and ARTICULOS.Clave_frabricante=FABRICANTES.Clave_fabricante order by ARTICULOS.Nombre;


--t) Obtener el nombre, precio y nombre de fabricante de los productos que son marca Lexar o Kingston ordenados descendentemente por precio.
SELECT ARTICULOS.Nombre ,  ARTICULOS.Precio , FABRICANTE.Nombre  FROM FABRICANTES, ARTICULOS WHERE FABRICANTE.Nombre='Lexar' or  FABRICANTE.Nombre='Kingston' and ARTICULOS.Clave_frabricante=FABRICANTES.Clave_fabricante order by ARTICULOS.Precio DESC;


--u) Añade un nuevo producto: Clave del producto 11, Altavoces de 120 del fabricante 2.
INSERT INTO ARTICULOS VALUES (11 ,'Altavoces',120,2);


--v) Cambia el nombre del producto 6 a ‘Impresora Laser’.
update   ARTICULOS set Nombre='Impresora Laser ' WHERE Clave_articulo = 6 ;


--w) Aplicar un descuento del 10% a todos los productos.
update ARTICULOS set Precio =Precio *01.0 ;


--x) Aplicar un descuento de 10 a todos los productos cuyo precio sea mayor o igual a 300.
update ARTICULOS set Precio =Precio - 10 where Precio >=300 ;


--y) Borra el producto numero 6.
delete FROM ARTICULOS where clave_articulo =6 ;