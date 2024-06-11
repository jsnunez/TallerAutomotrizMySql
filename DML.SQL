-- Insertar datos en la tabla tipoTelefono
INSERT INTO tipoTelefono (tipotelefono) VALUES 
('Fijo'),
('Celular'),
('Trabajo');

-- Insertar datos en la tabla tipoDireccion
INSERT INTO tipoDireccion (tipoDireecion) VALUES 
('Casa'),
('Oficina'),
('Apartamento');

-- Insertar datos en la tabla ciudad
INSERT INTO ciudad (nombre) VALUES 
('Bogotá'),
('Medellín'),
('Cali'),
('Barranquilla'),
('Cartagena'),
('Santa Marta'),
('Manizales'),
('Pereira'),
('Bucaramanga'),
('Cúcuta');

-- Insertar datos en la tabla cliente
INSERT INTO cliente (nombre, apellido, email) VALUES 
('Juan', 'Pérez', 'juan.perez@example.com'),
('María', 'López', 'maria.lopez@example.com'),
('Carlos', 'Gómez', 'carlos.gomez@example.com'),
('Ana', 'Martínez', 'ana.martinez@example.com'),
('Luis', 'Díaz', 'luis.diaz@example.com'),
('Laura', 'Hernández', 'laura.hernandez@example.com'),
('Pedro', 'Ramírez', 'pedro.ramirez@example.com'),
('Sofía', 'García', 'sofia.garcia@example.com'),
('Miguel', 'Rodríguez', 'miguel.rodriguez@example.com'),
('Lucía', 'Martín', 'lucia.martin@example.com'),
('Jorge', 'Jiménez', 'jorge.jimenez@example.com'),
('Elena', 'Sánchez', 'elena.sanchez@example.com'),
('Raúl', 'Morales', 'raul.morales@example.com'),
('Isabel', 'Castro', 'isabel.castro@example.com'),
('David', 'Ortiz', 'david.ortiz@example.com'),
('Mónica', 'Gutiérrez', 'monica.gutierrez@example.com'),
('Alejandro', 'Mejía', 'alejandro.mejia@example.com'),
('Carolina', 'Salazar', 'carolina.salazar@example.com'),
('Andrés', 'Ríos', 'andres.rios@example.com'),
('Gabriela', 'Vargas', 'gabriela.vargas@example.com');

-- Insertar datos en la tabla direccionCliente
INSERT INTO direccionCliente (direccion, fkCliente, fkIdTipoDireccion, fkCiudad) VALUES
('Calle 123 # 45-67', 1, 1, 1),
('Carrera 34 # 56-78', 2, 2, 2),
('Apartamento 501', 3, 3, 3),
('Oficina 201', 4, 2, 4),
('Calle 10 # 20-30', 5, 1, 5),
('Carrera 50 # 60-70', 6, 2, 6),
('Calle 25 # 35-45', 7, 1, 7),
('Carrera 80 # 90-100', 8, 1, 8),
('Apartamento 102', 9, 3, 9),
('Oficina 401', 10, 2, 10),
('Calle 15 # 25-35', 11, 1, 1),
('Carrera 70 # 80-90', 12, 1, 2),
('Carrera 34 # 45-55', 13, 2, 3),
('Calle 67 # 78-89', 14, 1, 4),
('Calle 90 # 100-110', 15, 1, 5),
('Apartamento 202', 16, 3, 6),
('Oficina 502', 17, 2, 7),
('Carrera 45 # 55-65', 18, 1, 8),
('Calle 12 # 34-56', 19, 1, 9),
('Carrera 80 # 90-100', 20, 2, 10);


-- Insertar datos en la tabla telefonoCliente
INSERT INTO telefonoCliente (numero, fkCliente, fkIdTipoTelefono) VALUES
('3001234567', 1, 2),
('3102345678', 2, 2),
('3203456789', 3, 2),
('3304567890', 4, 2),
('3405678901', 5, 2),
('3506789012', 6, 2),
('3607890123', 7, 2),
('3708901234', 8, 2),
('3809012345', 9, 2),
('3900123456', 10, 2),
('3009876543', 11, 2),
('3108765432', 12, 2),
('3207654321', 13, 2),
('3306543210', 14, 2),
('3405432109', 15, 2),
('3504321098', 16, 2),
('3603210987', 17, 2),
('3702109876', 18, 2),
('3801098765', 19, 2),
('3900987654', 20, 2);


-- Insertar datos en la tabla marca
INSERT INTO marca (nombre) VALUES
('Chevrolet'),
('Renault'),
('Toyota'),
('Ford'),
('Mazda'),
('Volkswagen'),
('Nissan'),
('Hyundai'),
('Kia'),
('BMW');

-- Insertar datos en la tabla modelo
INSERT INTO modelo (nombre, fkIdmarca) VALUES
('Spark', 1),
('Sandero', 2),
('Corolla', 3),
('Fiesta', 4),
('Mazda2', 5),
('Golf', 6),
('March', 7),
('i10', 8),
('Picanto', 9),
('Serie 3', 10);

-- Insertar datos en la tabla vehiculo
INSERT INTO vehiculo (placa, fkIdModelo, anyo, fkCliente,kilometraje) VALUES
('ABC123', 1, 2018, 1,50000),
('DEF456', 2, 2019, 2,60000),
('GHI789', 3, 2020, 3,33000),
('JKL012', 4, 2017, 4,40000),
('MNO345', 5, 2016, 5,10000),
('PQR678', 6, 2015, 6,30000),
('STU901', 7, 2014, 7,27000),
('VWX234', 8, 2021, 8,4000),
('YZA567', 9, 2013, 9,20000),
('BCD890', 10, 2012, 10,55000),
('EFG123', 1, 2011, 11,100000),
('HIJ456', 2, 2010, 12,20000),
('KLM789', 3, 2009, 13,50000),
('NOP012', 4, 2008, 14,200000),
('PQR345', 5, 2007, 15,34000),
('STU678', 6, 2006, 16,330000),
('VWX901', 7, 2005, 17,500000),
('YZA234', 8, 2004, 18,450000),
('BCD567', 9, 2003, 19,450000),
('EFG890', 10, 2002, 20,500000),
('HIJ123', 1, 2001, 1,300000),
('KLM456', 2, 2000, 2,400000),
('NOP789', 3, 1999, 3,500000),
('PQR012', 4, 1998, 4,50000),
('STU345', 5, 1997, 5,50000),
('VWX678', 6, 1996, 6,50000),
('YZA901', 7, 1995, 7,50000),
('BCD234', 8, 1994, 8,300000),
('EFG567', 9, 1993, 9,850000),
('HIJ890', 10, 1992, 10,400000),
('KLM123', 1, 1991, 11,450000),
('NOP456', 2, 1990, 12,500000),
('PQR789', 3, 1989, 13,600000),
('STU012', 4, 1988, 14,550000),
('VWX345', 5, 1987, 15,470000),
('YZA678', 6, 1986, 16,330000),
('BCD901', 7, 1985, 17,450000),
('EFG234', 8, 1984, 18,440000),
('HIJ567', 9, 1983, 19,660000),
('KLM890', 10, 1982, 20,720000);


INSERT INTO proveedor (nombre, contacto, email) VALUES 
('Distribuciones XYZ', 'Carlos Mendoza', 'cmendoza@xyz.com'),
('Suministros ABC', 'Laura Pérez', 'lperez@abc.com'),
('Importadora Global', 'Juan Rodríguez', 'jrodriguez@global.com'),
('Comercializadora Andina', 'Ana María Torres', 'atorres@andina.com'),
('Electrodomésticos QRS', 'Fernando González', 'fgonzalez@qrs.com'),
('Tecnología Innovadora', 'María López', 'mlopez@innovadora.com'),
('Papelera Nacional', 'Pedro Martínez', 'pmartinez@papelera.com'),
('Ferretería Universal', 'Sofía Castillo', 'scastillo@universal.com'),
('Alimentos Orgánicos', 'Miguel Herrera', 'mherrera@organicos.com'),
('Textiles Modernos', 'Lucía Ramírez', 'lramirez@textiles.com');

INSERT INTO telefonoProveedor (numero, fkProveedor, fkIdTipoTelefono) VALUES 
('3101234567', 1, 1),
('3202345678', 2, 2), 
('3003456789', 3, 3),
('3104567890', 4, 1), 
('3205678901', 5, 2), 
('3006789012', 6, 3), 
('3107890123', 7, 1), 
('3208901234', 8, 2), 
('3009012345', 9, 3), 
('3100123456', 10, 1); 

-- Insertar datos en la tabla proveedor
INSERT INTO proveedor (nombre, contacto, email) VALUES
('Autopartes del Valle', 'Juan Pérez', 'autopartesvalle@example.com'),
('Repuestos Medellín', 'María González', 'repuestosmedellin@example.com'),
('Accesorios Bogotá', 'Pedro Ramírez', 'accesoriosbogota@example.com'),
('Mecánica Especializada S.A.S.', 'Luisa Martínez', 'mecanicaespecializada@example.com'),
('Automotriz Amazonas', 'Carlos López', 'automotrizamazonas@example.com'),
('Frenos y Partes Ltda.', 'Ana García', 'frenosypartes@example.com'),
('Autorepuestos Caldas', 'Andrés Rodríguez', 'autorepuestascaldas@example.com'),
('Suministros Santa Fe', 'Diana Sánchez', 'suministrossantafe@example.com'),
('Automercado Técnico', 'Santiago Vargas', 'automercadotecnico@example.com'),
('Repuestos y Accesorios del Sur', 'Laura Torres', 'repuestossur@example.com');

-- Insertar datos en la tabla telefonoProveedor
INSERT INTO telefonoProveedor (numero, fkProveedor, fkIdTipoTelefono) VALUES
('3212345678', 1, 1),
('3113456789', 2, 2),
('3004567890', 3, 3),
('3225678901', 4, 1),
('3106789012', 5, 2),
('3017890123', 6, 3),
('3238901234', 7, 1),
('3129012345', 8, 2),
('3030123456', 9, 3),
('3241234567', 10, 1);


-- Insertar datos en la tabla servicio
INSERT INTO servicio (nombre, descripcion, costo) VALUES
('Cambio de aceite', 'Cambio de aceite y filtro de aceite', 75000.00),
('Revisión de frenos', 'Revisión y ajuste de frenos', 100000.00),
('Cambio de llantas', 'Cambio de llantas y alineación', 150000.00),
('Reparación de motor', 'Reparación y ajuste de motor', 300000.00),
('Cambio de batería', 'Cambio de batería y revisión de sistema eléctrico', 120000.00),
('Revisión de suspensión', 'Revisión y ajuste de suspensión', 80000.00),
('Lavado y encerado', 'Lavado exterior e interior del vehículo', 50000.00),
('Cambio de bujías', 'Cambio de bujías y revisión de sistema de encendido', 60000.00),
('Revisión de sistema de escape', 'Revisión y reparación de sistema de escape', 90000.00),
('Recarga de aire acondicionado', 'Recarga de gas refrigerante y revisión de sistema de aire acondicionado', 70000.00);


-- Insertar datos en la tabla cita
INSERT INTO cita (fechaHora, fkVehiculo, fkServicio) VALUES
('2024-04-10 08:00:00', 1, 1),
('2024-04-10 10:00:00', 2, 2),
('2024-04-11 09:30:00', 3, 3),
('2024-04-11 11:00:00', 4, 4),
('2024-04-12 14:00:00', 5, 5),
('2024-04-12 16:30:00', 6, 6),
('2024-04-13 08:30:00', 7, 7),
('2024-04-13 10:45:00', 8, 8),
('2024-04-14 12:00:00', 9, 9),
('2024-04-14 14:15:00', 10, 10),
('2024-04-15 08:00:00', 11, 1),
('2024-04-15 10:00:00', 12, 2),
('2024-04-16 09:30:00', 13, 3),
('2024-04-16 11:00:00', 14, 4),
('2024-04-17 14:00:00', 15, 5),
('2024-04-17 16:30:00', 16, 6),
('2024-04-18 08:30:00', 17, 7),
('2024-04-18 10:45:00', 18, 8),
('2024-04-19 12:00:00', 19, 9),
('2024-04-19 14:15:00', 20, 10),
('2024-04-20 08:00:00', 21, 1),
('2024-04-20 10:00:00', 22, 2),
('2024-04-21 09:30:00', 23, 3),
('2024-04-21 11:00:00', 24, 4),
('2024-04-22 14:00:00', 25, 5),
('2024-04-22 16:30:00', 26, 6),
('2024-04-23 08:30:00', 27, 7),
('2024-04-23 10:45:00', 28, 8),
('2024-04-24 12:00:00', 29, 9),
('2024-04-24 14:15:00', 30, 10);


-- Insertar cargos
INSERT INTO cargo (nombre)
VALUES
    ('Gerente'),
    ('Mecánico'),
    ('Recepcionista');


-- Insertar empleados
INSERT INTO empleado (nombre, apellido, fkCargo)
VALUES
    ('Juan', 'García', 1),
    ('María', 'López', 2),
    ('Carlos', 'Martínez', 3),
    ('Laura', 'Hernández', 2),
    ('Pedro', 'Díaz', 1),
    ('Ana', 'Pérez', 3);

-- Insertar teléfonos de empleados
INSERT INTO telefonoEmpleado (numero, fkEmpleado, fkIdTipoTelefono)
VALUES
    ('123456789', 1, 1),
    ('987654321', 1, 2),
    ('555555555', 2, 1),
    ('999888777', 3, 2),
    ('777777777', 4, 1),
    ('111222333', 5, 2),
    ('444444444', 6, 1),
    ('666666666', 6, 2);


INSERT INTO ubicacion (lugar)
VALUES
    ('Almacén A'),
    ('Almacén B'),
    ('Almacén C'),
    ('Almacén D');



    INSERT INTO pieza (nombre, descripcion, precio, fkIdProveedor)
VALUES
    ('Batería', 'Batería de 12V para automóviles estándar', 150000.00, 1),
    ('Filtro de aceite', 'Filtro de aceite para motores de gasolina', 30000.00, 2),
    ('Pastillas de freno', 'Pastillas de freno delanteras para vehículos', 80000.00, 3),
    ('Llanta', 'Llanta de aleación de aluminio para automóviles', 200000.00, 4),
    ('Amortiguador', 'Amortiguador delantero para vehículos', 120000.00, 1),
    ('Aceite de motor', 'Aceite de motor sintético 5W-30', 50000.00, 2),
    ('Filtro de aire', 'Filtro de aire de repuesto para vehículos', 40000.00, 3),
    ('Bujía', 'Bujía de encendido estándar para motores de gasolina', 25000.00, 4),
    ('Correa de distribución', 'Correa de distribución para motores de 4 cilindros', 80000.00, 1),
    ('Sensor de oxígeno', 'Sensor de oxígeno para sistemas de inyección de combustible', 90000.00, 2),
    ('Radiador', 'Radiador de aluminio para sistemas de enfriamiento de motores', 180000.00, 3),
    ('Filtro de combustible', 'Filtro de combustible de repuesto para vehículos', 60000.00, 4),
    ('Bobina de encendido', 'Bobina de encendido estándar para motores de gasolina', 70000.00, 1),
    ('Sensor de temperatura', 'Sensor de temperatura del refrigerante del motor', 45000.00, 2),
    ('Termostato', 'Termostato de repuesto para sistemas de enfriamiento de motores', 35000.00, 3),
    ('Bombillo de faro', 'Bombillo de repuesto para faros delanteros', 5000.00, 4),
    ('Filtro de dirección asistida', 'Filtro de dirección asistida para vehículos', 60000.00, 1),
    ('Pastillas de freno traseras', 'Pastillas de freno traseras para vehículos', 90000.00, 2),
    ('Filtro de habitáculo', 'Filtro de aire del habitáculo para sistemas de ventilación', 35000.00, 3),
    ('Sensor de posición del cigüeñal', 'Sensor de posición del cigüeñal para motores', 55000.00, 4),
    ('Bomba de agua', 'Bomba de agua para sistemas de enfriamiento de motores', 120000.00, 1),
    ('Correa de accesorios', 'Correa de accesorios para sistemas de transmisión', 70000.00, 2),
    ('Sensor de presión de aceite', 'Sensor de presión de aceite para motores de gasolina', 40000.00, 3),
    ('Bomba de combustible', 'Bomba de combustible para sistemas de inyección de combustible', 150000.00, 4);


-- Insertar datos de inventario
INSERT INTO inventario (fkIdpieza, cantidad, fkIdUbicacion,stockInicial)
VALUES
    (1, 20, 1,150), 
    (2, 30, 2,150), 
    (3, 25, 1,40), 
    (4, 15, 3,30), 
    (5, 18, 2,10), 
    (6, 22, 1,20), 
    (7, 35, 3,100),
    (8, 28, 2,100), 
    (9, 17, 1,45), 
    (10, 20, 2,60),
    (11, 10, 3,50),
    (12, 32, 1,100), 
    (13, 25, 2,100), 
    (14, 28, 3,200),
    (15, 20, 1,300), 
    (16, 40, 2,50), 
    (17, 23, 1,250), 
    (18, 30, 2,330), 
    (19, 15, 3,200), 
    (20, 22, 1,55),
    (21, 16, 2,60), 
    (22, 25, 1,100), 
    (23, 30, 3,400), 
    (24, 18, 2,200);


INSERT INTO ordenCompra (fecha, fkIdProveedor, fkIdEmpleado)
VALUES
    ('2024-04-10', 1, 3),
    ('2024-04-11', 2, 3),
    ('2024-04-12', 3, 3),
    ('2024-04-13', 1, 6),
    ('2024-04-14', 2, 6),
    ('2024-04-15', 3, 3),
    ('2024-04-16', 1, 3),
    ('2024-04-17', 2, 6),
    ('2024-04-18', 3, 3),
    ('2024-04-19', 1, 3);

-- Crear detalles de orden para la primera orden de compra
INSERT INTO ordenDetalle (fkIdOrdenC, fkIdpieza, cantidad, precio)
VALUES
    (1, 1, 10, 150000.00), 
    (1, 2, 20, 30000.00),  
    (1, 3, 15, 80000.00),   
    (2, 4, 5, 200000.00),   
    (2, 5, 8, 120000.00),   
    (2, 6, 30, 50000.00),   
    (3, 7, 25, 40000.00),   
    (3, 8, 40, 25000.00),  
    (4, 9, 12, 80000.00),  
    (4, 10, 18, 90000.00),  
    (5, 11, 7, 180000.00), 
    (5, 12, 22, 60000.00),  
    (6, 13, 15, 70000.00),  
    (6, 14, 10, 45000.00),  
    (7, 15, 20, 35000.00), 
    (7, 16, 100, 5000.00),  
    (8, 17, 18, 60000.00),  
    (8, 18, 10, 90000.00), 
    (9, 19, 15, 35000.00),  
    (9, 20, 12, 55000.00),  
    (10, 21, 8, 120000.00),  
    (10, 22, 20, 70000.00);


INSERT INTO reparacion (fecha, fkIdVehiculo, fkIdEmpleado, fkIdServicio, costoTotal, descripcion, duracion)
VALUES
   ('2024-04-25', 11, 2, 4, 250000.00, 'Reparación del motor debido a fallos en el sistema de encendido', 4),
    ('2024-04-26', 11, 4, 2, 70000.00, 'Revisión y ajuste de frenos por desgaste irregular', 2),
    ('2024-04-27', 11, 2, 9, 55000.00, 'Reparación de sistema de escape debido a una fuga detectada', 3),
    ('2024-04-28', 11, 2, 3, 200000.00, 'Cambio de llantas y alineación para mejorar la estabilidad', 4),
    ('2024-04-29', 11, 4, 1, 70000.00, 'Cambio de aceite y filtro de aceite para mantener el rendimiento del motor', 1),
    ('2024-04-25', 12, 4, 5, 100000.00, 'Cambio de batería debido a problemas de arranque', 2),
    ('2024-04-26', 12, 2, 6, 50000.00, 'Revisión y cambio de aceite para mantenimiento preventivo', 1),
    ('2024-04-27', 12, 4, 8, 60000.00, 'Cambio de bujías para mejorar el rendimiento del motor', 2),
    ('2024-04-28', 12, 2, 9, 90000.00, 'Revisión del sistema de escape por ruidos anormales', 3),
    ('2024-04-29', 12, 4, 7, 50000.00, 'Lavado exterior e interior del vehículo', 2),
    ('2024-04-25', 13, 4, 1, 75000.00, 'Cambio de aceite y filtro de aceite para mantenimiento regular', 1),
    ('2024-04-26', 13, 4, 2, 100000.00, 'Revisión y ajuste de frenos debido a vibraciones en el pedal', 2),
    ('2024-04-27', 13, 2, 4, 300000.00, 'Reparación del motor por sobrecalentamiento', 4),
    ('2024-04-28', 13, 2, 6, 50000.00, 'Cambio de aceite y filtro de aceite para mantenimiento regular', 1),
    ('2024-04-29', 13, 2, 3, 150000.00, 'Cambio de llantas por desgaste excesivo', 3),
    ('2024-04-25', 14, 4, 5, 120000.00, 'Cambio de batería debido a problemas de arranque', 2),
    ('2024-04-26', 14, 4, 6, 50000.00, 'Revisión y cambio de aceite para mantenimiento preventivo', 1),
    ('2024-04-27', 14, 4, 8, 60000.00, 'Cambio de bujías para mejorar el rendimiento del motor', 2),
    ('2024-04-28', 14, 2, 9, 90000.00, 'Revisión del sistema de escape por ruidos anormales', 3),
    ('2024-04-29', 14, 2, 7, 50000.00, 'Lavado exterior e interior del vehículo', 2),
    ('2024-04-25', 15, 4, 1, 75000.00, 'Cambio de aceite y filtro de aceite para mantenimiento regular', 1),
    ('2024-04-26', 15, 4, 2, 100000.00, 'Revisión y ajuste de frenos debido a vibraciones en el pedal', 2),
    ('2024-04-27', 15, 2, 4, 300000.00, 'Reparación del motor por sobrecalentamiento', 4),
    ('2024-04-28', 15, 2, 6, 50000.00, 'Cambio de aceite y filtro de aceite para mantenimiento regular', 1),
    ('2024-04-29', 15, 2, 3, 150000.00, 'Cambio de llantas por desgaste excesivo', 3),
    ('2024-05-29', 16, 2, 3, 150000.00, 'Cambio de llantas por desgaste excesivo', 3),
    ('2024-05-27', 5, 2, 4, 300000.00, 'Reparación del motor por sobrecalentamiento', 4),
    ('2024-05-28', 2, 2, 4, 300000.00, 'Reparación del motor por sobrecalentamiento', 4)
  
    
    ;




    INSERT INTO facturacion (fecha, fkIdCliente, total)
VALUES

    ('2024-05-10', 11, 750000.00),
    ('2024-05-11', 12, 600000.00),
    ('2024-05-12', 13, 850000.00),
    ('2024-05-13', 14, 700000.00),
    ('2024-05-14', 15, 550000.00);

INSERT INTO facturaDetalle (fkIdFacturacion, fkIdReparacion, cantidad, precio) VALUES
(1, 1, 1, 300000.00),
(1, 2, 1, 90000.00),
(1, 3, 1, 75000.00),
(1, 4, 1, 250000.00),
(1, 5, 1, 35000.00),
(2, 6, 1, 150000.00),
(2, 7, 1, 250000.00),
(2, 8, 1, 60000.00),
(2, 9, 1, 90000.00),
(2, 10, 1, 50000.00),
(3, 11, 1, 75000.00),
(3, 12, 1, 100000.00),
(3, 13, 1, 300000.00),
(3, 14, 1, 50000.00),
(3, 15, 1, 150000.00),
(4, 16, 1, 120000.00),
(4, 17, 1, 50000.00),
(4, 18, 1, 60000.00),
(4, 19, 1, 90000.00),
(4, 20, 1, 50000.00),
(5, 21, 1, 75000.00),
(5, 22, 1, 100000.00),
(5, 23, 1, 300000.00),
(5, 24, 1, 50000.00),
(5, 25, 1, 150000.00);


INSERT INTO reparacionPieza (fkIdReparacion, fkIdPieza, cantidad) VALUES
(1, 1, 4), (1, 2, 2), (1, 3, 1), (1, 4, 2),
(2, 5, 2), (2, 6, 1), (2, 7, 1), (2, 8, 2),
(3, 9, 1), (3, 10, 2), (3, 11, 1), (3, 12, 1),
(4, 13, 2), (4, 14, 1), (4, 15, 1), (4, 16, 2),
(5, 17, 1), (5, 18, 2), (5, 19, 1), (5, 20, 1),
(6, 1, 4), (6, 2, 2), (6, 3, 1), (6, 4, 2),
(7, 5, 2), (7, 6, 1), (7, 7, 1), (7, 8, 2),
(8, 9, 1), (8, 10, 2), (8, 11, 1), (8, 12, 1),
(9, 13, 2), (9, 14, 1), (9, 15, 1), (9, 16, 2),
(10, 17, 1), (10, 18, 2),
(25, 19, 1), (25, 20, 1),
(26, 19, 1), (26, 20, 1),
(27, 20, 3), (27, 7, 2),
(28, 20, 3), (28, 7, 2);
