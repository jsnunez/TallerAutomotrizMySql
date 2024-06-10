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
 ```
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


