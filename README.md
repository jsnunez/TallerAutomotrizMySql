# TallerAutomotrizMySql
base de datos basada en un taller automotriz

## CONSULTAS
   
1. Obtener el historial de reparaciones de un vehículo específico
 
 ```sql
select id from reparacion
where fkIdVehiculo = 12;
 ```
| id |
|----|
|  6 |
|  7 |
|  8 |
|  9 |
| 10 |

2. Calcular el costo total de todas las reparaciones realizadas por un empleado específico en un período de tiempo

 ```sql
select fkIdEmpleado,SUM(CostoTotal) AS costoTotal from reparacion
where fkIdEmpleado=2 AND fecha between '2024-05-25'AND'2024-05-28'
GROUP by fkIdEmpleado ;
 ```

| fkIdEmpleado | costoTotal |
|--------------|------------|
|            2 |  600000.00 |


3. Listar todos los clientes y los vehículos que poseen


 ```sql
SELECT fkCliente,placa from vehiculo
ORDER BY fkCliente;
 ```
| fkCliente | placa  |
|-----------|--------|
|         1 | ABC123 |
|         1 | HIJ123 |
|         2 | DEF456 |
|         2 | KLM456 |
|         3 | GHI789 |
|         3 | NOP789 |
|         4 | JKL012 |
|         4 | PQR012 |
|         5 | MNO345 |
|         5 | STU345 |
|         6 | PQR678 |
|         6 | VWX678 |
|         7 | STU901 |
|         7 | YZA901 |
|         8 | VWX234 |
|         8 | BCD234 |
|         9 | YZA567 |
|         9 | EFG567 |
|        10 | BCD890 |
|        10 | HIJ890 |
|        11 | EFG123 |
|        11 | KLM123 |
|        12 | HIJ456 |
|        12 | NOP456 |
|        13 | KLM789 |
|        13 | PQR789 |
|        14 | NOP012 |
|        14 | STU012 |
|        15 | PQR345 |
|        15 | VWX345 |
|        16 | STU678 |
|        16 | YZA678 |
|        17 | VWX901 |
|        17 | BCD901 |
|        18 | YZA234 |
|        18 | EFG234 |
|        19 | BCD567 |
|        19 | HIJ567 |
|        20 | EFG890 |
|        20 | KLM890 |

4. Obtener la cantidad de piezas en inventario para cada pieza
 ```sql
SELECT fkIdpieza,cantidad FROM inventario;

 ```
| fkIdpieza | cantidad |
|-----------|----------|
|         1 |       30 |
|         2 |       30 |
|         3 |       25 |
|         4 |       15 |
|         5 |       18 |
|         6 |       22 |
|         7 |       35 |
|         8 |       28 |
|         9 |       17 |
|        10 |       20 |
|        11 |       10 |
|        12 |       32 |
|        13 |       25 |
|        14 |       28 |
|        15 |       20 |
|        16 |       40 |
|        17 |       23 |
|        18 |       30 |
|        19 |       15 |
|        20 |       22 |
|        21 |       16 |
|        22 |       25 |
|        23 |       30 |
|        24 |       18 |
5. Obtener las citas programadas para un día específico

 ```sql
SELECT id AS idcita from cita
where DATE(fechaHora) = '2024-04-16';

 ```
| idcita |
|--------|
|     13 |
|     14 |

6. Generar una factura para un cliente específico en una fecha determinada

 ```sql
SELECT id AS idfacturacion from facturacion
where fkIdCliente=13 AND fecha='2024-05-12';
 ```

| idfacturacion |
|---------------|
|             3 |

7. Listar todas las órdenes de compra y sus detalles
 ```sql

SELECT fkIdOrdenC,fkIdpieza,cantidad,precio from ordendetalle;
 ```
| fkIdOrdenC | fkIdpieza | cantidad | precio    |
|------------|-----------|----------|-----------|
|          1 |         1 |       10 | 150000.00 |
|          1 |         2 |       20 |  30000.00 |
|          1 |         3 |       15 |  80000.00 |
|          2 |         4 |        5 | 200000.00 |
|          2 |         5 |        8 | 120000.00 |
|          2 |         6 |       30 |  50000.00 |
|          3 |         7 |       25 |  40000.00 |
|          3 |         8 |       40 |  25000.00 |
|          4 |         9 |       12 |  80000.00 |
|          4 |        10 |       18 |  90000.00 |
|          5 |        11 |        7 | 180000.00 |
|          5 |        12 |       22 |  60000.00 |
|          6 |        13 |       15 |  70000.00 |
|          6 |        14 |       10 |  45000.00 |
|          7 |        15 |       20 |  35000.00 |
|          7 |        16 |      100 |   5000.00 |
|          8 |        17 |       18 |  60000.00 |
|          8 |        18 |       10 |  90000.00 |
|          9 |        19 |       15 |  35000.00 |
|          9 |        20 |       12 |  55000.00 |
|         10 |        21 |        8 | 120000.00 |
|         10 |        22 |       20 |  70000.00 |

8. Obtener el costo total de piezas utilizadas en una reparación específica


 ```sql
SELECT sum(r.cantidad*p.precio) AS costoTotalPieza
FROM reparacionPieza AS r
JOIN pieza AS p
ON r.fkIdPieza=p.id
WHERE r.fkIdReparacion=2
;

 ```
| costoTotalPieza |
|-----------------|
|       380000.00 |

9. Obtener el inventario de piezas que necesitan ser reabastecidas (cantidad menor que un umbral)

 ```sql
SELECT fkIdpieza FROM inventario
WHERE cantidad <25;

 ```
| fkIdpieza |
|-----------|
|         4 |
|         5 |
|         6 |
|         9 |
|        10 |
|        11 |
|        15 |
|        17 |
|        19 |
|        20 |
|        21 |
|        24 |

 10. Obtener la lista de servicios más solicitados en un período específico

 ```sql
SELECT s.nombre AS servicio,count(fkIdServicio)  AS cantidadServicios
FROM reparacion AS r
JOIN servicio AS s
ON r.fkIdServicio=s.id
group by fkIdServicio 
order by count(fkIdServicio) desc
limit 1;

 ```

| servicio             | cantidadServicios |
|----------------------|-------------------|
| Reparación de motor  |                 7 |

11. Obtener el costo total de reparaciones para cada cliente en un período específico
 ```sql
SELECT c.nombre,sum(r.costoTotal)
FROM cliente AS c
JOIN vehiculo AS v
ON v.fkCliente=c.id
JOIN reparacion AS r
ON r.fkIdVehiculo=v.id
WHERE r.fecha BETWEEN '2024-04-25' AND '2024-04-29'
group by c.nombre;

 ```
| nombre | sum(r.costoTotal) |
|--------|-------------------|
| Jorge  |         645000.00 |
| Elena  |         350000.00 |
| Raúl   |         675000.00 |
| Isabel |         370000.00 |
| David  |         675000.00 |

12. Listar los empleados con mayor cantidad de reparaciones realizadas en un
período específico


 ```sql
SELECT  e.nombre,count(e.id) AS cantidadReparaciones
FROM empleado AS e
JOIN reparacion AS r
ON r.fkIdEmpleado =e.id
GROUP BY e.nombre
LIMIT 3;

 ```
| nombre | count(e.id) |
|--------|-------------|
| María  |          16 |
| Laura  |          14 |

13. Obtener las piezas más utilizadas en reparaciones durante un período
específico
 ```sql
SELECT p.nombre,SUM(r.cantidad) AS cantidadTotal
FROM pieza AS p
JOIN reparacionPieza AS r
ON p.id = r.fkIdpieza
GROUP BY p.nombre
ORDER BY cantidadTotal DESC
LIMIT 1;


 ```

| nombre   | cantidadTotal |
|----------|---------------|
| Batería  |             8 |


14. Calcular el promedio de costo de reparaciones por vehículo

```sql

SELECT v.placa, AVG(r.costoTotal) AS costoPromedio
FROM vehiculo AS v
JOIN reparacion AS r
ON v.id=r.fkIdVehiculo
GROUP BY v.placa;
 ```

| placa  | costoPromedio |
|--------|---------------|
| EFG123 | 129000.000000 |
| HIJ456 |  70000.000000 |
| KLM789 | 135000.000000 |
| NOP012 |  74000.000000 |
| PQR345 | 135000.000000 |
| STU678 | 150000.000000 |
| MNO345 | 300000.000000 |
| DEF456 | 300000.000000 |
| VWX234 | 300000.000000 |


15. Obtener el inventario de piezas por proveedor
```sql
SELECT pr.nombre AS proveedor, p.nombre AS pieza , i.cantidad
FROM inventario AS i
JOIN pieza AS p
ON i.fkIdpieza=p.id
JOIN proveedor pr
ON pr.id=p.fkIdProveedor
ORDER BY proveedor;

 ```


| proveedor               | pieza                              | cantidad |
|-------------------------|------------------------------------|----------|
| Comercializadora Andina | Llanta                             |       15 |
| Comercializadora Andina | Bujía                              |       28 |
| Comercializadora Andina | Filtro de combustible              |       32 |
| Comercializadora Andina | Bombillo de faro                   |       40 |
| Comercializadora Andina | Sensor de posición del cigüeñal    |       22 |
| Comercializadora Andina | Bomba de combustible               |       18 |
| Distribuciones XYZ      | Batería                            |       30 |
| Distribuciones XYZ      | Amortiguador                       |       18 |
| Distribuciones XYZ      | Correa de distribución             |       17 |
| Distribuciones XYZ      | Bobina de encendido                |       25 |
| Distribuciones XYZ      | Filtro de dirección asistida       |       23 |
| Distribuciones XYZ      | Bomba de agua                      |       16 |
| Importadora Global      | Pastillas de freno                 |       25 |
| Importadora Global      | Filtro de aire                     |       35 |
| Importadora Global      | Radiador                           |       10 |
| Importadora Global      | Termostato                         |       20 |
| Importadora Global      | Filtro de habitáculo               |       15 |
| Importadora Global      | Sensor de presión de aceite        |       30 |
| Suministros ABC         | Filtro de aceite                   |       30 |
| Suministros ABC         | Aceite de motor                    |       22 |
| Suministros ABC         | Sensor de oxígeno                  |       20 |
| Suministros ABC         | Sensor de temperatura              |       28 |
| Suministros ABC         | Pastillas de freno traseras        |       30 |
| Suministros ABC         | Correa de accesorios               |       25 |

16. Listar los clientes que no han realizado reparaciones en el último año


```sql
SELECT c.id, c.nombre, c.apellido, c.email
FROM cliente c
WHERE c.id NOT IN (
    SELECT DISTINCT c.id
    FROM cliente c
    JOIN vehiculo v ON c.id = v.fkCliente
    JOIN reparacion r ON v.id = r.fkIdVehiculo
    WHERE r.fecha >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
);
 ```
| id | nombre    | apellido   | email                        |
|----|-----------|------------|------------------------------|
|  1 | sebastian | nuñez      | jsnunez94@gmail.com          |
|  3 | Carlos    | Gómez      | carlos.gomez@example.com     |
|  4 | Ana       | Martínez   | ana.martinez@example.com     |
|  6 | Laura     | Hernández  | laura.hernandez@example.com  |
|  7 | Pedro     | Ramírez    | pedro.ramirez@example.com    |
|  9 | Miguel    | Rodríguez  | miguel.rodriguez@example.com |
| 10 | Lucía     | Martín     | lucia.martin@example.com     |
| 17 | Alejandro | Mejía      | alejandro.mejia@example.com  |
| 18 | Carolina  | Salazar    | carolina.salazar@example.com |
| 19 | Andrés    | Ríos       | andres.rios@example.com      |
| 20 | Gabriela  | Vargas     | gabriela.vargas@example.com  |

17. Obtener las ganancias totales del taller en un período específico

```sql
SELECT sum((fd.precio*fd.cantidad)-(r.costoTotal*fd.cantidad)) AS totalGanancia
FROM facturaDetalle AS fd
JOIN reparacion AS r
ON fd.fkIdReparacion= r.id ;

 ```

| totalGanancia |
|---------------|
|     355000.00 |

18. Listar los empleados y el total de horas trabajadas en reparaciones en un
período específico (asumiendo que se registra la duración de cada reparación)

```sql
SELECT e.nombre,sum(r.duracion) AS cantidadHoras
FROM empleado AS e
JOIN reparacion AS r
ON r.fkIdEmpleado = e.id
WHERE r.fecha between '2024-04-25' AND ' 2024-04-27'
GROUP BY e.nombre;


 ```
| nombre | cantidadHoras |
|--------|---------------|
| María  |            16 |
| Laura  |            17 |


19. Obtener el listado de servicios prestados por cada empleado en un período
específico
 ```sql
SELECT DISTINCT s.nombre AS servicio ,e.nombre AS nombreEmpleado
FROM servicio AS s
JOIN reparacion AS r
ON r.fkIdServicio= s.id
JOIN empleado AS e
ON r.fkIdEmpleado = e.id
WHERE r.fecha between '2024-04-25' AND ' 2024-04-27'
;
 ```
| servicio                       | nombreEmpleado |
|--------------------------------|----------------|
| Reparación de motor            | María          |
| Revisión de sistema de escape  | María          |
| Revisión de suspensión         | María          |
| Revisión de frenos             | Laura          |
| Cambio de batería              | Laura          |
| Cambio de bujías               | Laura          |
| Cambio de aceite               | Laura          |
| Revisión de suspensión         | Laura          |

# SUBCONSULTA

1. Obtener el cliente que ha gastado más en reparaciones durante el último año.

```sql
SELECT c.nombre,c.apellido
FROM cliente AS c
WHERE c.id =(
SELECT fkIdCliente
FROM facturacion AS f
WHERE f.fecha between  DATE_SUB(CURDATE(), INTERVAL 1 YEAR) AND CURDATE()
ORDER BY f.total desc
LIMIT 1);
 ```
| nombre | apellido |
|--------|----------|
| Lucía  | Martín   |

 2. Obtener la pieza más utilizada en reparaciones durante el último mes


```sql
SELECT p.nombre
FROM pieza AS p
WHERE p.id = 
(SELECT rp.fkIdPieza from reparacionPieza AS rp
WHERE rp.fkIdReparacion in (SELECT r.id 
from reparacion AS r
where  r.fecha > DATE_SUB(CURDATE(), INTERVAL 1 MONTH))
GROUP BY rp.fkIdPieza
ORDER by count(rp.fkIdpieza) desc
limit 1)
;

 ```
| nombre                             |
|------------------------------------|
| Sensor de posición del cigüeñal    |

3. Obtener los proveedores que suministran las piezas más caras
```sql
SELECT nombre
FROM proveedor
WHERE id=(
SELECT fkIdProveedor
FROM ordenCompra
WHERE id = (
SELECT fkIdOrdenC
FROM ordendetalle AS od
ORDER BY precio DESC
limit 1));

 ```
| nombre          |
|-----------------|
| Suministros ABC |

opcion 2
```sql
SELECT p.nombre
FROM proveedor p
WHERE p.id IN (
    SELECT oc.fkIdProveedor
    FROM ordenCompra oc
    WHERE oc.id IN (
        SELECT top_orders.fkIdOrdenC
        FROM (
            SELECT od.fkIdOrdenC
            FROM ordenDetalle od
            ORDER BY od.precio DESC
            LIMIT 5
        ) AS top_orders
    )
);
 ```
| nombre             |
|--------------------|
| Suministros ABC    |
| Distribuciones XYZ |

4. Listar las reparaciones que no utilizaron piezas específicas durante el último año

```sql
SELECT id 
from reparacion
WHERE id not in (SELECT fkIdReparacion
FROM reparacionPieza
)
ORDER by id; 
 ```
| id |
|----|
| 11 |
| 12 |
| 13 |
| 14 |
| 15 |
| 16 |
| 17 |
| 18 |
| 19 |
| 20 |
| 21 |
| 22 |
| 23 |
| 24 |
| 29 |
| 30 |

5. Obtener las piezas que están en inventario por debajo del 10% del stock inicial


```sql

 ```

#  PROCEDIMIENTOS ALMACENADOS
1. Crear un procedimiento almacenado para insertar una nueva reparación.

```sql
DELIMITER $$
DROP PROCEDURE IF EXISTS insertar_reparacion;
CREATE PROCEDURE insertar_reparacion(
IN fechap date,
IN fkIdVehiculop INT(11),
IN fkIdEmpleadop INT(11),
IN fkIdServiciop INT(11),
IN costoTotalp DECIMAL(15,2),
IN descripcionp VARCHAR(150),
duracionp int)
BEGIN
INSERT INTO reparacion (fecha, fkIdVehiculo, fkIdEmpleado, fkIdServicio, costoTotal, descripcion, duracion)
VALUES(fechap, fkIdVehiculop, fkIdEmpleadop, fkIdServiciop, costoTotalp, descripcionp, duracionp);
END $$
DELIMITER ;
 ```
CALL
```sql
call insertar_reparacion('2024-05-29', 8,4, 4, 300000.00, 'Reparación del motor por sobrecalentamiento', 10);

 ```
2. Crear un procedimiento almacenado para actualizar el inventario de una pieza.

```sql
DELIMITER $$
DROP PROCEDURE IF EXISTS actualizar_inventario;
CREATE PROCEDURE actualizar_inventario(
IN idPieza int(11),
IN aCantidad int,
IN aubicacion int
)
BEGIN
UPDATE inventario
SET cantidad=aCantidad,fkIdUbicacion=aubicacion
WHERE fkIdpieza=idPieza;
END $$
DELIMITER ;

 ```

CALL
```sql
CALL actualizar_inventario(1,30,2);

 ```
3. Crear un procedimiento almacenado para eliminar una cita
```sql
DELIMITER $$

DROP PROCEDURE IF EXISTS eliminar_cita;
CREATE PROCEDURE eliminar_cita(
        IN idcita INT
        )
BEGIN
    DELETE FROM cita 
    WHERE id = idcita;
END $$
DELIMITER ;
 ```
CALL
```sql

CALL eliminar_cita(5);
 ```
4. Crear un procedimiento almacenado para generar una factura

```sql
DELIMITER $$

DROP PROCEDURE IF EXISTS crear_factura;
CREATE PROCEDURE crear_factura(
    IN fechaf date,
    IN idcliente int(11),
    IN totalf int
)
BEGIN
INSERT INTO facturacion (fecha, fkIdCliente, total)
VALUES
 (fechaf,idcliente,totalf);

END $$
DELIMITER ;
 ```
CALL
```sql

CALL crear_factura('2024,06,09',10,2500000);
 ```
 5. Crear un procedimiento almacenado para obtener el historial de reparaciones de un vehículo
```sql
DELIMITER $$

DROP PROCEDURE IF EXISTS obtenerHistorial;
CREATE PROCEDURE obtenerHistorial(
    IN idvehiculo int(11)
)
BEGIN
SELECT v.placa,r.id 
FROM reparacion AS r
JOIN vehiculo AS v
ON r. fkIdVehiculo= v.id
WHERE v.id=idvehiculo;
END $$
DELIMITER ;
 ```
CALL
```sql

CALL obtenerHistorial(15);
 ```
6. Crear un procedimiento almacenado para calcular el costo total de
reparaciones de un cliente en un período

```sql
DELIMITER $$


DROP PROCEDURE IF EXISTS costoCliente;
CREATE PROCEDURE costoCliente(
    IN idcliente int(11)
)
BEGIN
SELECT sum(costoTotal) AS costoTotalCliente
FROM reparacion AS r 
JOIN vehiculo AS v
ON r.fkIdVehiculo=v.id
WHERE v.fkCliente= idcliente AND r.fecha BETWEEN '2024-04-25 ' AND '2024-04-27 ';
END $$
DELIMITER ;
 ```
CALL
```sql

CALL costoCliente(15);
 ```
7. Crear un procedimiento almacenado para obtener la lista de vehículos que requieren mantenimiento basado en el kilometraje.



```sql

 ```
CALL
```sql


 ```
8. Crear un procedimiento almacenado para insertar una nueva orden de compra

```sql
DELIMITER $$



DROP PROCEDURE IF EXISTS InsertarOrdencompra;
CREATE PROCEDURE InsertarOrdencompra(
     IN fechaN DATE,
    IN IdProveedor INT(11),
    IN IdEmpleado INT(11)
)
BEGIN
INSERT INTO ordenCompra (fecha, fkIdProveedor, fkIdEmpleado)
VALUES
(fechaN,IdProveedor,IdEmpleado);
END $$

DELIMITER ;

 ```
CALL
```sql

CALL InsertarOrdencompra('2024-06-07',3,3);

 ```
9. Crear un procedimiento almacenado para actualizar los datos de un cliente

```sql
DELIMITER $$

DROP PROCEDURE IF EXISTS actualizarCliente;
CREATE PROCEDURE actualizarCliente(
    IN idcliente int(11),
    IN NombreA VARCHAR(50),
    IN apellidoA VARCHAR(50),
    IN emailA VARCHAR(50),
    IN direccionA VARCHAR(50),
    IN tipoDireccionA int(11),
    IN CiudadA INT(11),
    IN numeroA VARCHAR(15),
    IN tipotelefonoA INT(11)

)
BEGIN
UPDATE cliente
SET nombre=NombreA,apellido=apellidoA,email=emailA
WHERE id=idcliente;
UPDATE direccionCliente
SET direccion=direccionA, fkIdTipoDireccion=tipoDireccionA ,fkCiudad=CiudadA

WHERE fkCliente=idcliente;
UPDATE telefonoCliente
SET numero=numeroA,fkIdTipoTelefono=tipotelefonoA
WHERE fkCliente=idcliente;



END $$
DELIMITER ;
 ```
CALL
```sql

CALL actualizarCliente(1,'sebastian','nuñez','jsnunez94@gmail.com','calle 21#22*37',
1,1,'3044469689',2);

 ```
10. Crear un procedimiento almacenado para obtener los servicios más solicitados
en un período
```sql
DELIMITER $$

DROP PROCEDURE IF EXISTS servicioMAS;
CREATE PROCEDURE servicioMAS(
    IN fechaInicaial DATE,
    IN fechaFinal DATE
)
BEGIN
SELECT s.nombre, count(s.nombre) AS cantidadServicios
FROM reparacion AS r
JOIN servicio AS S
ON r.fkIdServicio = s.id
WHERE r.fecha BETWEEN fechaInicaial AND fechaFinal
GROUP BY s.id 
ORDER BY cantidadServicios DESC;
END $$
DELIMITER ;

 ```
CALL
```sql

CALL servicioMAS('2024-04-25','2024-04-26');

 ```
