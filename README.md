# TallerAutomotrizMySql
base de datos basada en un taller automotriz

## CONSULTAS
   
1. Obtener el historial de reparaciones de un vehículo específico
 
 ```sql
select r.id AS reparacion,placa from reparacion AS r
JOIN vehiculo AS v
ON v.id=r.fkIdVehiculo
where fkIdVehiculo = 12;
 ```
| reparacion | placa  |
|------------|--------|
|          6 | HIJ456 |
|          7 | HIJ456 |
|          8 | HIJ456 |
|          9 | HIJ456 |
|         10 | HIJ456 |

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
SELECT c.nombre,c.apellido,placa from vehiculo AS v
JOIN cliente AS c
on v.fkCliente=c.id
ORDER BY fkCliente;

 ```
| nombre    | apellido   | placa  |
|-----------|------------|--------|
| Juan      | Pérez      | ABC123 |
| Juan      | Pérez      | HIJ123 |
| María     | López      | DEF456 |
| María     | López      | KLM456 |
| Carlos    | Gómez      | GHI789 |
| Carlos    | Gómez      | NOP789 |
| Ana       | Martínez   | JKL012 |
| Ana       | Martínez   | PQR012 |
| Luis      | Díaz       | MNO345 |
| Luis      | Díaz       | STU345 |
| Laura     | Hernández  | PQR678 |
| Laura     | Hernández  | VWX678 |
| Pedro     | Ramírez    | STU901 |
| Pedro     | Ramírez    | YZA901 |
| Sofía     | García     | VWX234 |
| Sofía     | García     | BCD234 |
| Miguel    | Rodríguez  | YZA567 |
| Miguel    | Rodríguez  | EFG567 |
| Lucía     | Martín     | BCD890 |
| Lucía     | Martín     | HIJ890 |
| Jorge     | Jiménez    | EFG123 |
| Jorge     | Jiménez    | KLM123 |
| Elena     | Sánchez    | HIJ456 |
| Elena     | Sánchez    | NOP456 |
| Raúl      | Morales    | KLM789 |
| Raúl      | Morales    | PQR789 |
| Isabel    | Castro     | NOP012 |
| Isabel    | Castro     | STU012 |
| David     | Ortiz      | PQR345 |
| David     | Ortiz      | VWX345 |
| Mónica    | Gutiérrez  | STU678 |
| Mónica    | Gutiérrez  | YZA678 |
| Alejandro | Mejía      | VWX901 |
| Alejandro | Mejía      | BCD901 |
| Carolina  | Salazar    | YZA234 |
| Carolina  | Salazar    | EFG234 |
| Andrés    | Ríos       | BCD567 |
| Andrés    | Ríos       | HIJ567 |
| Gabriela  | Vargas     | EFG890 |
| Gabriela  | Vargas     | KLM890 |

4. Obtener la cantidad de piezas en inventario para cada pieza
 ```sql
SELECT p.nombre,cantidad FROM inventario i
JOIN pieza p
ON i.fkIdpieza=p.id;


 ```
| nombre                             | cantidad |
|------------------------------------|----------|
| Batería                            |       20 |
| Filtro de aceite                   |       30 |
| Pastillas de freno                 |       25 |
| Llanta                             |       15 |
| Amortiguador                       |       18 |
| Aceite de motor                    |       22 |
| Filtro de aire                     |       35 |
| Bujía                              |       28 |
| Correa de distribución             |       17 |
| Sensor de oxígeno                  |       20 |
| Radiador                           |       10 |
| Filtro de combustible              |       32 |
| Bobina de encendido                |       25 |
| Sensor de temperatura              |       28 |
| Termostato                         |       20 |
| Bombillo de faro                   |       40 |
| Filtro de dirección asistida       |       23 |
| Pastillas de freno traseras        |       30 |
| Filtro de habitáculo               |       15 |
| Sensor de posición del cigüeñal    |       22 |
| Bomba de agua                      |       16 |
| Correa de accesorios               |       25 |
| Sensor de presión de aceite        |       30 |
| Bomba de combustible               |       18 |
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
SELECT od.fkIdOrdenC,p.nombre,od.cantidad,od.precio from ordendetalle AS od
JOIN pieza AS p
ON p.id=od.fkIdpieza;
 ```
| fkIdOrdenC | nombre                             | cantidad | precio    |
|------------|------------------------------------|----------|-----------|
|          1 | Batería                            |       10 | 150000.00 |
|          1 | Filtro de aceite                   |       20 |  30000.00 |
|          1 | Pastillas de freno                 |       15 |  80000.00 |
|          2 | Llanta                             |        5 | 200000.00 |
|          2 | Amortiguador                       |        8 | 120000.00 |
|          2 | Aceite de motor                    |       30 |  50000.00 |
|          3 | Filtro de aire                     |       25 |  40000.00 |
|          3 | Bujía                              |       40 |  25000.00 |
|          4 | Correa de distribución             |       12 |  80000.00 |
|          4 | Sensor de oxígeno                  |       18 |  90000.00 |
|          5 | Radiador                           |        7 | 180000.00 |
|          5 | Filtro de combustible              |       22 |  60000.00 |
|          6 | Bobina de encendido                |       15 |  70000.00 |
|          6 | Sensor de temperatura              |       10 |  45000.00 |
|          7 | Termostato                         |       20 |  35000.00 |
|          7 | Bombillo de faro                   |      100 |   5000.00 |
|          8 | Filtro de dirección asistida       |       18 |  60000.00 |
|          8 | Pastillas de freno traseras        |       10 |  90000.00 |
|          9 | Filtro de habitáculo               |       15 |  35000.00 |
|          9 | Sensor de posición del cigüeñal    |       12 |  55000.00 |
|         10 | Bomba de agua                      |        8 | 120000.00 |
|         10 | Correa de accesorios               |       20 |  70000.00 |

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
SELECT nombre, i.cantidad,i.stockInicial
FROM pieza AS p
JOIN inventario AS i
ON p.id=i.fkIdpieza
WHERE i.cantidad<(i.stockInicial*.1);
 ```
| nombre                        | cantidad | stockInicial |
|-------------------------------|----------|--------------|
| Termostato                    |       20 |          300 |
| Filtro de dirección asistida  |       23 |          250 |
| Pastillas de freno traseras   |       30 |          330 |
| Filtro de habitáculo          |       15 |          200 |
| Sensor de presión de aceite   |       30 |          400 |
| Bomba de combustible          |       18 |          200 |


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

| id | fecha      | fkIdVehiculo |
|----|------------|--------------|
|  1 | 2024-04-25 |           11 |
|  2 | 2024-04-26 |           11 |
|  3 | 2024-04-27 |           11 |
|  4 | 2024-04-28 |           11 |
|  5 | 2024-04-29 |           11 |
|  6 | 2024-04-25 |           12 |
|  7 | 2024-04-26 |           12 |
|  8 | 2024-04-27 |           12 |
|  9 | 2024-04-28 |           12 |
| 10 | 2024-04-29 |           12 |
| 11 | 2024-04-25 |           13 |
| 12 | 2024-04-26 |           13 |
| 13 | 2024-04-27 |           13 |
| 14 | 2024-04-28 |           13 |
| 15 | 2024-04-29 |           13 |
| 16 | 2024-04-25 |           14 |
| 17 | 2024-04-26 |           14 |
| 18 | 2024-04-27 |           14 |
| 19 | 2024-04-28 |           14 |
| 20 | 2024-04-29 |           14 |
| 21 | 2024-04-25 |           15 |
| 22 | 2024-04-26 |           15 |
| 23 | 2024-04-27 |           15 |
| 24 | 2024-04-28 |           15 |
| 25 | 2024-04-29 |           15 |
| 26 | 2024-05-29 |           16 |
| 27 | 2024-05-27 |            5 |
| 28 | 2024-05-28 |            2 |
| 29 | 2024-06-09 |           14 |
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
DELIMITER $$

DROP PROCEDURE IF EXISTS revisionKm;
CREATE PROCEDURE revisionKm(
     IN km  INT
)
BEGIN
SELECT id, placa, fkCliente, kilometraje AS 'KilometrajeActual', km AS 'revisionKilometraje'
	FROM vehiculo
	WHERE kilometraje > km;
END$$
DELIMITER ;

 ```
CALL
```sql
CALL revisionKm(100000);

 ```

| id | placa  | fkCliente | KilometrajeActual | revisionKilometraje |
|----|--------|-----------|-------------------|---------------------|
| 14 | NOP012 |        14 |            200000 |              100000 |
| 16 | STU678 |        16 |            330000 |              100000 |
| 17 | VWX901 |        17 |            500000 |              100000 |
| 18 | YZA234 |        18 |            450000 |              100000 |
| 19 | BCD567 |        19 |            450000 |              100000 |
| 20 | EFG890 |        20 |            500000 |              100000 |
| 21 | HIJ123 |         1 |            300000 |              100000 |
| 22 | KLM456 |         2 |            400000 |              100000 |
| 23 | NOP789 |         3 |            500000 |              100000 |
| 28 | BCD234 |         8 |            300000 |              100000 |
| 29 | EFG567 |         9 |            850000 |              100000 |
| 30 | HIJ890 |        10 |            400000 |              100000 |
| 31 | KLM123 |        11 |            450000 |              100000 |
| 32 | NOP456 |        12 |            500000 |              100000 |
| 33 | PQR789 |        13 |            600000 |              100000 |
| 34 | STU012 |        14 |            550000 |              100000 |
| 35 | VWX345 |        15 |            470000 |              100000 |
| 36 | YZA678 |        16 |            330000 |              100000 |
| 37 | BCD901 |        17 |            450000 |              100000 |
| 38 | EFG234 |        18 |            440000 |              100000 |
| 39 | HIJ567 |        19 |            660000 |              100000 |
| 40 | KLM890 |        20 |            720000 |              100000 |
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
