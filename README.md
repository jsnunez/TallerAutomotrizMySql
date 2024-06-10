# TallerAutomotrizMySql
base de datos basada en un taller automotriz

## CONSULTAS
   
1. Obtener el historial de reparaciones de un vehículo específico
 
 ```sql
select id from reparacion
where fkIdVehiculo = 12;
 ```
| id |
+----+
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
+--------------+------------+
|            2 |  600000.00 |


3. Listar todos los clientes y los vehículos que poseen


 ```sql
SELECT fkCliente,placa from vehiculo
ORDER BY fkCliente;
 ```
| fkCliente | placa  |
+-----------+--------+
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


 ```sql

 ```
 ```sql

 ```
 ```sql

 ```
 ```sql

 ```
