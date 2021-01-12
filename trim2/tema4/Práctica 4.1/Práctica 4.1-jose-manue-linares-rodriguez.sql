Entrar en la consola.
Crear una base de datos llamada jardineria
Activar la base de datos jardineria como la base de datos a usar por defecto en la sesión.
user Jardineria
Cargar las tablas y los datos ejecutanto el script de carga siguiente:source F:/jardineria.sql

5 .Listar las bases de datos para comprobar que está la base de datos jardineria entre ellas.
SHOW DATABASES;
6.Mostrar las tablas que componen la base de datos jardineria
 SHOW  TABLES ;
7.Mostrar los campos que componen la tabla clientes
 describe clientes ;
8.Realizar el mismo proceso del punto anterior con todas las tablas de la base de datos.
describe Oficinas
describe Empleados
describe GamasProductos
describe Clientes
describe Pedidos
describe Productos
9.Mostrar todos los clientes de la base de datos.
SELECT NombreCliente FROM Clientes;
10.Mostrar el nombre y el teléfono de los clientes.
SELECT NombreCliente FROM Clientes;
 SELECT Telefono FROM Clientes;
